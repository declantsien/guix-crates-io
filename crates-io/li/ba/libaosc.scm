(define-module (crates-io li ba libaosc) #:use-module (crates-io))

(define-public crate-libaosc-0.1.0 (c (n "libaosc") (v "0.1.0") (d (list (d (n "async-compression") (r "^0.4") (f (quote ("tokio" "xz"))) (o #t) (d #t) (k 0)) (d (n "libc") (r "^0.2") (d #t) (k 0)) (d (n "oma-debcontrol") (r "^0.3") (d #t) (k 0)) (d (n "reqwest") (r "^0.11") (o #t) (k 0)) (d (n "thiserror") (r "^1.0") (d #t) (k 0)) (d (n "tokio") (r "^1.34") (f (quote ("fs"))) (o #t) (d #t) (k 0)) (d (n "xz2") (r "^0.1") (o #t) (d #t) (k 0)))) (h "1wphws2r613jlf3yz0msxg9ynfqfk4jy5p8i8aisn89n8xm8vz0x") (f (quote (("default" "download" "blocking" "async")))) (s 2) (e (quote (("download" "dep:reqwest") ("blocking" "reqwest/blocking" "dep:xz2") ("async" "dep:async-compression" "dep:tokio"))))))

