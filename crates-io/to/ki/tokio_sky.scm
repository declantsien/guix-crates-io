(define-module (crates-io to ki tokio_sky) #:use-module (crates-io))

(define-public crate-tokio_sky-1.0.0 (c (n "tokio_sky") (v "1.0.0") (d (list (d (n "async-trait") (r "^0.1.53") (d #t) (k 0)) (d (n "futures") (r "^0.3.21") (o #t) (d #t) (k 0)) (d (n "hashring") (r "^0.3.0") (d #t) (k 0)) (d (n "indexmap") (r "^1.8.1") (d #t) (k 0)) (d (n "pulsar") (r "^4.1.1") (o #t) (d #t) (k 0)) (d (n "rdkafka") (r "^0.28.0") (f (quote ("cmake-build"))) (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1.18.1") (f (quote ("rt-multi-thread" "macros" "sync" "time"))) (d #t) (k 0)))) (h "0akfs78w6rrqsbjnqzirs3fzg3kk6cc83v49268c8l65qw4nwcdj") (f (quote (("full" "kafka" "pulsar" "collector") ("default") ("collector")))) (s 2) (e (quote (("pulsar" "dep:pulsar" "dep:futures") ("kafka" "dep:rdkafka"))))))

