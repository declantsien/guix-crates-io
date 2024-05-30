(define-module (crates-io le mo lemon-llm) #:use-module (crates-io))

(define-public crate-lemon-llm-0.0.0 (c (n "lemon-llm") (v "0.0.0") (h "14zmkai8r64wxa4ybxvmh1sbm021kmq2n2kqr8x8r5kgqwnpvna8")))

(define-public crate-lemon-llm-0.0.1 (c (n "lemon-llm") (v "0.0.1") (d (list (d (n "lemon-graph") (r "^0.0.1") (d #t) (k 0)) (d (n "petgraph") (r "^0.6.4") (k 0)) (d (n "replicate-rust") (r "^0.0.5") (o #t) (d #t) (k 0)) (d (n "reqwest") (r "^0.11.24") (o #t) (d #t) (k 0)) (d (n "serde_json") (r "^1.0.114") (o #t) (d #t) (k 0)) (d (n "thiserror") (r "^1.0.57") (d #t) (k 0)) (d (n "tokio") (r "^1.36.0") (f (quote ("full"))) (d #t) (k 2)) (d (n "tracing") (r "^0.1.40") (d #t) (k 0)) (d (n "tracing-subscriber") (r "^0.3.18") (d #t) (k 2)))) (h "1yqzqxvsd9wdnwdqkhskvnm1c64hdlxf3psxvl33cks5vy7icpcd") (f (quote (("default" "ollama" "replicate")))) (s 2) (e (quote (("replicate" "dep:replicate-rust") ("ollama" "dep:reqwest" "dep:serde_json"))))))

