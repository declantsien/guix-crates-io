(define-module (crates-io id en identity_ecdsa_verifier) #:use-module (crates-io))

(define-public crate-identity_ecdsa_verifier-1.3.0 (c (n "identity_ecdsa_verifier") (v "1.3.0") (d (list (d (n "identity_verification") (r "=1.3.0") (k 0)) (d (n "josekit") (r "^0.8.6") (d #t) (k 2)) (d (n "k256") (r "^0.13.3") (f (quote ("std" "ecdsa" "ecdsa-core"))) (o #t) (k 0)) (d (n "p256") (r "^0.13.2") (f (quote ("std" "ecdsa" "ecdsa-core"))) (o #t) (k 0)) (d (n "serde_json") (r "^1.0") (k 2)) (d (n "signature") (r "^2") (k 0)))) (h "1l1mx4ra2zqdlwdjaq8i7m9m78vc0l7qh6qzbzhpjwxyzqnc6njv") (f (quote (("default" "es256" "es256k")))) (s 2) (e (quote (("es256k" "dep:k256") ("es256" "dep:p256")))) (r "1.65")))

