(define-module (crates-io pr in print-no-std) #:use-module (crates-io))

(define-public crate-print-no-std-0.1.0 (c (n "print-no-std") (v "0.1.0") (d (list (d (n "dos-cp") (r "^0.5.2") (f (quote ("load"))) (t "cfg(target_os=\"dos\")") (k 0)) (d (n "errno-no-std") (r "^0.2.1") (t "cfg(not(target_os=\"dos\"))") (k 0)) (d (n "iter-identify_first_last") (r "^0.2.1") (t "cfg(all(not(target_os=\"dos\"), windows))") (k 0)) (d (n "libc") (r "^0.2.153") (t "cfg(not(windows))") (k 0)) (d (n "winapi") (r "^0.3.9") (f (quote ("consoleapi" "handleapi" "processenv"))) (d #t) (t "cfg(all(not(target_os=\"dos\"), windows))") (k 0)))) (h "045s8zl5f5bkcs766429v8jnjhn10qyifa85fbvcz1sp99f8j5s6") (r "1.71")))

