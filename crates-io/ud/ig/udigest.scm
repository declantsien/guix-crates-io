(define-module (crates-io ud ig udigest) #:use-module (crates-io))

(define-public crate-udigest-0.1.0 (c (n "udigest") (v "0.1.0") (d (list (d (n "digest") (r "^0.10") (k 0)) (d (n "hex") (r "^0.4") (d #t) (k 2)) (d (n "sha2") (r "^0.10") (d #t) (k 2)) (d (n "udigest-derive") (r "^0.1") (o #t) (d #t) (k 0)))) (h "0bnfd9vsjp6xd1yn5iqjnbh98id1ll2xc6pj8wyxr9crjp5sbr58") (f (quote (("std" "alloc") ("alloc")))) (s 2) (e (quote (("derive" "dep:udigest-derive"))))))

(define-public crate-udigest-0.2.0-rc1 (c (n "udigest") (v "0.2.0-rc1") (d (list (d (n "blake2") (r "^0.10") (d #t) (k 2)) (d (n "digest") (r "^0.10") (o #t) (k 0)) (d (n "hex") (r "^0.4") (d #t) (k 2)) (d (n "sha2") (r "^0.10") (d #t) (k 2)) (d (n "sha3") (r "^0.10") (d #t) (k 2)) (d (n "udigest-derive") (r "^0.1") (o #t) (d #t) (k 0)))) (h "0gm2j4yikwl3d1mb7bvzv30767yp7ccrjkm7rjqirvgxzjfjma0p") (f (quote (("std" "alloc") ("inline-struct") ("default" "digest" "std" "inline-struct") ("alloc")))) (s 2) (e (quote (("digest" "dep:digest") ("derive" "dep:udigest-derive"))))))

