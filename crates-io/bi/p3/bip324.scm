(define-module (crates-io bi p3 bip324) #:use-module (crates-io))

(define-public crate-bip324-0.1.0 (c (n "bip324") (v "0.1.0") (d (list (d (n "chacha20") (r "^0.9.1") (d #t) (k 0)) (d (n "chacha20poly1305") (r "^0.10.1") (d #t) (k 0)) (d (n "hex") (r "^0.4.3") (d #t) (k 2)) (d (n "hkdf") (r "^0.12.4") (d #t) (k 0)) (d (n "rand") (r "^0.8.4") (d #t) (k 0)) (d (n "secp256k1") (r "^0.28.2") (d #t) (k 0)) (d (n "sha2") (r "^0.10.8") (d #t) (k 0)))) (h "05r8v1hwclhfiqfarmnhsqy1v7z0s686p7ilycjdfxkgdfpqr9la")))

(define-public crate-bip324-0.2.0 (c (n "bip324") (v "0.2.0") (d (list (d (n "bitcoin_hashes") (r "^0.14.0") (k 0)) (d (n "hex") (r "^0.2.0") (d #t) (k 2) (p "hex-conservative")) (d (n "rand") (r "^0.8.0") (k 0)) (d (n "secp256k1") (r "^0.29.0") (k 0)))) (h "1bjqg2ijjvdp9hw6nds2c46gqlj36h3r6r9gq6pq6f99622bw38i") (f (quote (("std" "secp256k1/std" "rand/std" "rand/std_rng") ("default" "std")))) (r "1.56.1")))

(define-public crate-bip324-0.3.0 (c (n "bip324") (v "0.3.0") (d (list (d (n "bitcoin") (r "^0.32.0") (k 0)) (d (n "hex") (r "^0.2.0") (d #t) (k 2) (p "hex-conservative")) (d (n "rand") (r "^0.8.0") (k 0)))) (h "1biv0adcfmry9qplqibiid307sfznjx2zv0a0rwqd2d21vd5xllw") (f (quote (("std" "alloc" "bitcoin/std" "rand/std" "rand/std_rng") ("default" "std") ("alloc")))) (r "1.56.1")))

