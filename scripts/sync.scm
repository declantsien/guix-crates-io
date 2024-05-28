(define-module (scripts sync)
  #:use-module (json)
  #:use-module (ice-9 threads)
  #:use-module (ice-9 rdelim)
  #:use-module (rnrs enums)
  #:use-module (ice-9 regex)
  #:use-module (ice-9 popen)
  #:use-module (guix import utils)
  #:use-module (guix i18n)
  #:use-module ((guix diagnostics) #:select
                (formatted-message warning info report-error info leave))
  #:use-module (crates-io)
  #:use-module (srfi srfi-1)  ;; first
  #:use-module (guix base16)
  #:autoload   (guix build utils) (mkdir-p find-files)
  #:use-module (guix base32))

(define (json-features-list features)
  (if (and features (not (unspecified? features)))
      (map (lambda (feature)
	     `(,(car feature) . ,(vector->list (or (cdr feature) #())))
	     )
	   (or features '()))
      '()))

;; https://doc.rust-lang.org/cargo/reference/registry-index.html#json-schema
(define-json-mapping <crate> make-crate crate?
  json->crate
  ;; The name of the package.
  ;; This must only contain alphanumeric, `-`, or `_` characters.
  (name          crate->name)
  ;; The version of the package this row is describing.
  ;; This must be a valid version number according to the Semantic
  ;; Versioning 2.0.0 spec at https://semver.org/.
  (version       crate->version "vers")
  ;; Array of direct dependencies of the package.
  (dependencies  crate->dependencies "deps"
		 (lambda (deps)
                   (map json->crate-dependency
			(if (vector? deps)
                            (vector->list deps)
                            '()))))
  ;; Array of direct dependencies of the package.
  ;; A SHA256 checksum of the `.crate` file.
  ;; Converted to nix base32
  (hash      crate->hash "cksum"
	     (lambda (checksum)
	       (bytevector->nix-base32-string
		(base16-string->bytevector checksum))))
  ;; Set of features defined for the package.
  ;; Each feature maps to an array of features or dependencies it enables.
  (features  crate->features "features"
	     json-features-list)
  ;; Boolean of whether or not this version has been yanked.
  (yanked        crate->yanked)
  ;; The `links` string value from the package's manifest, or null if not
  ;; specified. This field is optional and defaults to null.
  (links         crate->links)
  ;; An unsigned 32-bit integer value indicating the schema version of this
  ;; entry.
  ;;
  ;; If this not specified, it should be interpreted as the default of 1.
  ;;
  ;; Cargo (starting with version 1.51) will ignore versions it does not
  ;; recognize. This provides a method to safely introduce changes to index
  ;; entries and allow older versions of cargo to ignore newer entries it
  ;; doesn't understand. Versions older than 1.51 ignore this field, and
  ;; thus may misinterpret the meaning of the index entry.
  ;;
  ;; The current values are:
  ;;
  ;; * 1: The schema as documented here, not including newer additions.
  ;;      This is honored in Rust version 1.51 and newer.
  ;; * 2: The addition of the `features2` field.
  ;;      This is honored in Rust version 1.60 and newer.
  (schema-version crate->schema-version "v")
  ;; This optional field contains features with new, extended syntax.
  ;; Specifically, namespaced features (`dep:`) and weak dependencies
  ;; (`pkg?/feat`).
  ;;
  ;; This is separated from `features` because versions older than 1.19
  ;; will fail to load due to not being able to parse the new syntax, even
  ;; with a `Cargo.lock` file.
  ;;
  ;; Cargo will merge any values listed here with the "features" field.
  ;;
  ;; If this field is included, the "v" field should be set to at least 2.
  ;;
  ;; Registries are not required to use this field for extended feature
  ;; syntax, they are allowed to include those in the "features" field.
  ;; Using this is only necessary if the registry wants to support cargo
  ;; versions older than 1.19, which in practice is only crates.io since
  ;; those older versions do not support other registries.
  (features2       crate->features2 "features2"
		   json-features-list)
  ;; The minimal supported Rust version (optional)
  ;; This must be a valid version requirement without an operator (e.g. no `=`)
  (rust-version crate->rust-version "rust_version"))

(define-json-mapping <crate-dependency> make-crate-dependency crate-dependency?
  json->crate-dependency
  ;; Name of the dependency.
  ;; If the dependency is renamed from the original package name,
  ;; this is the new name. The original package name is stored in
  ;; the `package` field.
  (name  crate-dependency->name)
  ;; The SemVer requirement for this dependency.
  ;; This must be a valid version requirement defined at
  ;; https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html.
  (requirement  crate-dependency->requirement "req")
  ;; Array of features (as strings) enabled for this dependency.
  (features crate-dependency->features "features"
	    vector->list)
  ;; Boolean of whether or not this is an optional dependency.
  (optional crate-dependency->optional)
  ;; Boolean of whether or not default features are enabled.
  (default-features crate-dependency->default-features "default_features")
  ;; The target platform for the dependency.
  ;; null if not a target dependency.
  ;; Otherwise, a string such as "cfg(windows)".
  (target crate-dependency->target)
  ;; Note: this is a required field, but a small number of entries
  ;; exist in the crates.io index with either a missing or null
  ;; `kind` field due to implementation bugs.
  (kind crate-dependency->kind "kind"
	(lambda (kind)
	  (crate-dependency-kind->position (string->symbol kind))))
  ;; The URL of the index of the registry where this dependency is
  ;; from as a string. If not specified or null, it is assumed the
  ;; dependency is in the current registry.
  (registry crate-dependency->registry)
  ;; If the dependency is renamed, this is a string of the actual
  ;; package name. If not specified or null, this dependency is not
  ;; renamed.
  (package crate-dependency->package))

(define (crate-read-syntax crate)
  (define (json-field-unspecified? value)
    (or (unspecified? value) (eq? value 'null) (null? value)))
  (let* ((name (crate->name crate))
	 (version (crate->version crate))
	 (hash (crate->hash crate))
	 (dependencies (crate->dependencies crate)))
    `(define-public ,(string->symbol (format #f "crate-~a-~a" name version))
       (c
	(n ,name)
	(v ,version)
	,@(if (or (unspecified? dependencies)
		  (null? dependencies))
	      '()
	      `((d
		 (list ,@(map
			  (lambda (dependency)
			    `(d
			      (n ,(crate-dependency->name dependency))
			      (r ,(crate-dependency->requirement dependency))
			      ,@(if (json-field-unspecified? (crate-dependency->features dependency))
				    '()
				    `((f ',(crate-dependency->features dependency))))
			      ,@(if (crate-dependency->optional dependency)
				    `((o #t))
				    '())
			      ,@(if (crate-dependency->default-features dependency)
				    `((d #t))
				    '())
			      ,@(if (json-field-unspecified? (crate-dependency->target dependency))
				    '()
				    `((t ,(crate-dependency->target dependency))))
			      ,@(if (json-field-unspecified? (crate-dependency->kind dependency))
				    '()
				    `((k ,(crate-dependency->kind dependency))))
			      ,@(if (json-field-unspecified? (crate-dependency->registry dependency))
				    '()
				    `((g ,(crate-dependency->registry dependency))))
			      ,@(if (json-field-unspecified? (crate-dependency->package dependency))
				    '()
				    `((p ,(crate-dependency->package dependency))))))
			  dependencies)))))
	(h ,hash)
	,@(if (json-field-unspecified? (crate->features crate))
	      '()
	      `((f ',(crate->features crate))))
	,@(if (crate->yanked crate)
	      `((y #t))
	      '())
	,@(if (json-field-unspecified? (crate->links crate))
	      '()
	      `((l ,(crate->links crate))))
	,@(if (json-field-unspecified? (crate->schema-version crate))
	      '()
	      `((s ,(crate->schema-version crate))))
	,@(if (json-field-unspecified? (crate->features2 crate))
	      '()
	      `((e ',(crate->features2 crate))))
	,@(if (json-field-unspecified? (crate->rust-version crate))
	      '()
	      `((r ,(crate->rust-version crate))))))
    ))

(define (process-file file output-port)
  (call-with-input-file file
    (lambda (port)
      (let ((lines (read-lines port)))
	(for-each
	 (lambda (line)
	   (write (crate-read-syntax (json->crate line)) output-port)
	   (newline output-port)
	   (newline output-port))
	 lines)))))

(define-public (make-scheme-index output-file files)
  (mkdir-p (dirname output-file))
  (call-with-output-file output-file
    (lambda (port)
      (write
       `(define-module ,(map string->symbol
			     (string-split
			      (car (string-split output-file #\.))
			      #\/))
	  #:use-module (crates-io)) port)
      (newline port)
      (newline port)
      (for-each
       (lambda (file)
	 (process-file file port))
       files))))

(define args (cdr (program-arguments)))
(define out (car args))
(define ins (find-files (cadr args)))

(make-scheme-index out ins)
