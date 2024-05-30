(define-module (crates-io pa ni panic-no-std) #:use-module (crates-io))

(define-public crate-panic-no-std-0.0.1 (c (n "panic-no-std") (v "0.0.1") (d (list (d (n "exit-no-std") (r "^0.2.0") (d #t) (k 0)) (d (n "libc") (r "^0.2.139") (t "cfg(all(not(target_os = \"dos\"), not(windows)))") (k 0)) (d (n "winapi") (r "^0.3.9") (f (quote ("fileapi" "handleapi" "processenv" "winbase"))) (d #t) (t "cfg(all(not(target_os = \"dos\"), windows))") (k 0)) (d (n "pc-ints") (r "^0.3.2") (d #t) (t "cfg(target_os = \"dos\")") (k 0)))) (h "0v5kv0bb3b6axrvfd6j6hn5zaa90nrnfpldx8091gjih8jzx02hq")))

