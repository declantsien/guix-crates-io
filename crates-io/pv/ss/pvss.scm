(define-module (crates-io pv ss pvss) #:use-module (crates-io))

(define-public crate-pvss-0.1.0 (c (n "pvss") (v "0.1.0") (d (list (d (n "openssl") (r "^0.9.14") (d #t) (k 0)))) (h "0ymx9r559f4rqviirszr1qslkmj7bh1mm804kky2p085fjcqk282")))

(define-public crate-pvss-0.1.1 (c (n "pvss") (v "0.1.1") (d (list (d (n "openssl") (r "^0.10") (d #t) (k 0)))) (h "1gprym6qr2zyplb8y8bps6vcyqsm6ir1ycqx8gg02bi9lzl5b68b")))

(define-public crate-pvss-0.2.0 (c (n "pvss") (v "0.2.0") (d (list (d (n "cryptoxide") (r "^0.4") (o #t) (d #t) (k 0)) (d (n "eccoxide") (r "^0.3") (o #t) (d #t) (k 0)) (d (n "getrandom") (r "^0.2") (o #t) (d #t) (k 0)) (d (n "openssl") (r "^0.10") (o #t) (d #t) (k 0)))) (h "007pam7l2hyb5939w8yallhc7h6sqhqkmq69yjspwbn4zpz3bkkv") (f (quote (("default" "eccoxide")))) (s 2) (e (quote (("openssl" "dep:openssl") ("eccoxide" "dep:eccoxide" "dep:cryptoxide" "dep:getrandom"))))))

