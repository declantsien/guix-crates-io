(use-modules (ice-9 rdelim))
(use-modules (ice-9 popen))
(use-modules (guix import utils))

(define repo-dir "crates.io-index/")
(define %last-file "crates-io/.last")
(define last-commit (call-with-input-file %last-file read-line))
(define current-commit
      (let* ((cmd-port (open-input-pipe (format #f "git -C ~a log -1 --format='%H'" repo-dir)))
	     (commit (read-line cmd-port)))
	(close-pipe cmd-port)
	commit))
(define git-command-string
  (if (eof-object? last-commit)
      (format #f "git -C ~a ls-files" repo-dir)
      (format #f "git -C ~a diff --name-only ~a ~a" repo-dir last-commit current-commit)))

(display git-command-string)
(call-with-output-file "build.ninja"
  (lambda (port)
    (write-line
     "rule make-scheme-index
  command = guile scripts/sync.scm $out $in"
     port)
    (newline port)

    (let* ((cmd-port (open-input-pipe
		      git-command-string))
	   (files (read-lines cmd-port))) ; from (ice-9 rdelim)
      (close-pipe cmd-port)
      (for-each
       (lambda (file)
	 (when (not (member file (list ".github/workflows/update-dl-url.yml"
				       "config.json")))
	   (write-line
	    (format #f "build crates-io/~a.scm: make-scheme-index ~a~a" file repo-dir file)
	    port)))
       files))))

(call-with-output-file %last-file (lambda (port) (display current-commit port)))
