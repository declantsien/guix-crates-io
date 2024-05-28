(define-module (crates-io)
  #:use-module (guix records)
  #:use-module (guix packages)
  #:use-module (guix download)    
  #:use-module (rnrs enums)
  #:use-module (srfi srfi-1)  ;; find
  #:use-module (srfi srfi-26)
  #:use-module (ice-9 match)
  #:use-module (guix build-system cargo)
  #:export (c
	    d
	    crate->source
	    crate-dependency-kind
	    crate-dependency-kind->get	    
	    crate-dependency-kind->position)) ;; cut

;; https://doc.rust-lang.org/cargo/reference/registry-index.html#index-files
;; Packages with 1 character names are placed in a directory named 1.
;; Packages with 2 character names are placed in a directory named 2.
;; Packages with 3 character names are placed in the directory 3/{first-character} where {first-character} is the first character of the package name.
;; All other packages are stored in directories named {first-two}/{second-two} where the top directory is the first two characters of the package name, and the next subdirectory is the third and fourth characters of the package name. For example, cargo would be stored in a file named ca/rg/cargo.
(define (crate-module-path name)
  (match (string-length name)
    (1 '("1"))
    (2 '("2"))
    (3 `("3" ,(substring name 0 1)))
    (_ `(,(substring name 0 2) ,(substring name 2 4)))))

(define (crate-module-path-symbols name)
  (map string->symbol (crate-module-path name)))

;; The dependency kind. "dev", "build", or "normal".
(define crate-dependency-kind
  (make-enumeration
   '(normal build dev)))

(define* (crate-dependency-kind->position kind)
  ((enum-set-indexer crate-dependency-kind) kind))

(define* (crate-dependency-kind->get index)
  (find (lambda (kind)
          (equal? (crate-dependency-kind->position kind) index))
        (enum-set->list crate-dependency-kind)))

;; https://doc.rust-lang.org/cargo/reference/registry-index.html#json-schema
(define-record-type* <crate> c make-crate
  crate?
  ;; The name of the package.
  ;; This must only contain alphanumeric, `-`, or `_` characters.
  (n          crate->name)
  ;; The version of the package this row is describing.
  ;; This must be a valid version number according to the Semantic
  ;; Versioning 2.0.0 spec at https://semver.org/.
  (v       crate->version)
  ;; Array of direct dependencies of the package.
  (d  crate->dependencies (default (list )))
  ;; Array of direct dependencies of the package.
  ;; A SHA256 checksum of the `.crate` file.
  ;; Converted to nix base32
  (h      crate->hash)
  ;; Set of features defined for the package.
  ;; Each feature maps to an array of features or dependencies it enables.
  (f      crate->features (default (list )))
  ;; Boolean of whether or not this version has been yanked.
  (y        crate->yanked (default #f))
  ;; The `links` string value from the package's manifest, or null if not
  ;; specified. This field is optional and defaults to null.
  (l         crate->links (default #nil))
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
  (s crate->schema-version (default 1))
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
  (e       crate->features2 (default (list )))
  ;; The minimal supported Rust version (optional)
  ;; This must be a valid version requirement without an operator (e.g. no `=`)
  (r crate->rust-version (default #nil)))

(define-record-type* <crate-dependency> d make-crate-dependency crate-dependency?
  ;; Name of the dependency.
  ;; If the dependency is renamed from the original package name,
  ;; this is the new name. The original package name is stored in
  ;; the `package` field.
  (n  crate-dependency->name)
  ;; The SemVer requirement for this dependency.
  ;; This must be a valid version requirement defined at
  ;; https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html.
  (r  crate-dependency->requirement)
  ;; Array of features (as strings) enabled for this dependency.
  (f crate-dependency->features (default (list )))
  ;; Boolean of whether or not this is an optional dependency.
  (o crate-dependency->optional (default (list #f)))
  ;; Boolean of whether or not default features are enabled.
  (d crate-dependency->default-features (default #f))
  ;; The target platform for the dependency.
  ;; null if not a target dependency.
  ;; Otherwise, a string such as "cfg(windows)".
  (t crate-dependency->target (default #nil))
  ;; Note: this is a required field, but a small number of entries
  ;; exist in the crates.io index with either a missing or null
  ;; `kind` field due to implementation bugs.
  (k crate-dependency->kind (default 0))
  ;; The URL of the index of the registry where this dependency is
  ;; from as a string. If not specified or null, it is assumed the
  ;; dependency is in the current registry.
  (g crate-dependency->registry (default #nil))
  ;; If the dependency is renamed, this is a string of the actual
  ;; package name. If not specified or null, this dependency is not
  ;; renamed.
  (p crate-dependency->package (default #nil)))

(define (crate->source c)
  (let ((name (crate->name c))
	(version (crate->version c))
	(hash (crate->hash c)))
    (origin
      (method url-fetch)
      (uri (crate-uri name version))
      (file-name (string-append "rust-" name "-src-" version ".tar.lz"))
      (sha256 (base32 hash)))))


(define (crate-source name version)
  ;; Candy procduce to resolve crate source by name and version
  ;; TODO
  #f)

