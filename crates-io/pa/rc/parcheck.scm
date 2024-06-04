(define-module (crates-io pa rc parcheck) #:use-module (crates-io))

(define-public crate-parcheck-0.1.0-alpha.1 (c (n "parcheck") (v "0.1.0-alpha.1") (d (list (d (n "fastrand") (r "^2.1") (o #t) (d #t) (k 0)) (d (n "futures-util") (r "^0.3") (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("sync" "rt"))) (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("full"))) (d #t) (k 2)))) (h "0bzqgac8ib7rd6m6b44c4yaj9a8dlpzpf9878li1ymj5558wqdmb") (s 2) (e (quote (("enable" "dep:fastrand" "dep:tokio" "dep:futures-util"))))))

(define-public crate-parcheck-0.1.0-alpha.2 (c (n "parcheck") (v "0.1.0-alpha.2") (d (list (d (n "fastrand") (r "^2.1") (o #t) (d #t) (k 0)) (d (n "futures-util") (r "^0.3") (o #t) (d #t) (k 0)) (d (n "pin-project-lite") (r "^0.2") (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("sync" "rt"))) (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("full"))) (d #t) (k 2)) (d (n "tracing") (r "^0.1") (o #t) (d #t) (k 0)) (d (n "tracing") (r "^0.1") (d #t) (k 2)))) (h "1syyn4y7rmj5frgkbbf9rpva3grvif2qij1nrfsn54jy1hws6wwk") (s 2) (e (quote (("tracing" "dep:tracing") ("enable" "dep:fastrand" "dep:tokio" "dep:futures-util" "dep:pin-project-lite"))))))

