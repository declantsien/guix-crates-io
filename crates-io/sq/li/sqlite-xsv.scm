(define-module (crates-io sq li sqlite-xsv) #:use-module (crates-io))

(define-public crate-sqlite-xsv-0.2.1-alpha.10 (c (n "sqlite-xsv") (v "0.2.1-alpha.10") (d (list (d (n "cbindgen") (r "^0.24.3") (d #t) (k 1)) (d (n "csv") (r "^1.1") (d #t) (k 0)) (d (n "flate2") (r "^1.0.24") (o #t) (d #t) (k 0)) (d (n "sqlite-loadable") (r "^0.0.5") (d #t) (k 0)) (d (n "zstd") (r "^0.12.1") (o #t) (d #t) (k 0)))) (h "1vzdgzdivjc7bz6yqg3g7grwf679cbcvnqwwp3q08a7w9y6sxpnm") (f (quote (("default" "gzip_support" "zstd_support")))) (s 2) (e (quote (("zstd_support" "dep:zstd") ("gzip_support" "dep:flate2"))))))

