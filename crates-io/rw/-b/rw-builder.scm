(define-module (crates-io rw -b rw-builder) #:use-module (crates-io))

(define-public crate-rw-builder-0.0.1 (c (n "rw-builder") (v "0.0.1") (d (list (d (n "anyhow") (r "^1.0.71") (d #t) (k 0)) (d (n "bincode") (r "^1.3.3") (o #t) (d #t) (k 0)) (d (n "chacha20") (r "^0.9.1") (o #t) (d #t) (k 0)) (d (n "cipher") (r "^0.4.4") (f (quote ("std"))) (o #t) (d #t) (k 0)) (d (n "flate2") (r "^1.0.26") (o #t) (d #t) (k 0)) (d (n "salsa20") (r "^0.10.2") (o #t) (d #t) (k 0)) (d (n "serde") (r "^1.0.164") (f (quote ("derive"))) (o #t) (d #t) (k 0)))) (h "1076did214j7hd1g5yrdb0gyz7x88bvr5x4hc8p4jnkccxf8wdba") (s 2) (e (quote (("salsa20" "dep:salsa20" "dep:cipher") ("flate2" "dep:flate2") ("chacha20" "dep:chacha20" "dep:cipher") ("bincode" "dep:bincode" "dep:serde"))))))

