(define-module (crates-io rs td rstdev-storage) #:use-module (crates-io))

(define-public crate-rstdev-storage-0.1.0 (c (n "rstdev-storage") (v "0.1.0") (d (list (d (n "rst-common") (r "^1.1") (f (quote ("with-errors" "with-tokio"))) (d #t) (k 0)) (d (n "rst-common") (r "^1.1") (f (quote ("with-tests"))) (d #t) (k 2)) (d (n "sqlx") (r "^0.7") (f (quote ("runtime-tokio"))) (d #t) (k 0)))) (h "1h0fg9jdaxwlajr4xfhvdp14vldjq18907ahznm5izqdg94m27pr") (f (quote (("postgresql" "sqlx/postgres") ("mysql" "sqlx/mysql")))) (r "1.74")))

(define-public crate-rstdev-storage-0.3.0 (c (n "rstdev-storage") (v "0.3.0") (d (list (d (n "rst-common") (r "^1.1") (f (quote ("with-errors" "with-tokio"))) (d #t) (k 0)) (d (n "rst-common") (r "^1.1") (f (quote ("with-tests"))) (d #t) (k 2)) (d (n "rust-rocksdb") (r "^0.22.0") (o #t) (d #t) (k 0) (p "rocksdb")) (d (n "sqlx") (r "^0.7") (f (quote ("runtime-tokio"))) (d #t) (k 0)))) (h "0y4z50qpai4lhqisdgz90n1vkih10l31rrgkqzj9y36r1k8fxh4q") (f (quote (("postgresql" "sqlx/postgres") ("mysql" "sqlx/mysql")))) (s 2) (e (quote (("rocksdb" "dep:rust-rocksdb")))) (r "1.74")))

