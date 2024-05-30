(define-module (crates-io fe rv fervid_napi) #:use-module (crates-io))

(define-public crate-fervid_napi-0.1.0 (c (n "fervid_napi") (v "0.1.0") (d (list (d (n "fervid") (r "^0.0.3") (d #t) (k 0)) (d (n "fervid_codegen") (r "^0.1") (d #t) (k 0)) (d (n "fervid_transform") (r "^0.1") (d #t) (k 0)) (d (n "mimalloc-rust") (r "^0.2") (f (quote ("local-dynamic-tls"))) (d #t) (t "cfg(all(target_os = \"linux\", not(all(target_env = \"musl\", target_arch = \"aarch64\"))))") (k 0)) (d (n "mimalloc-rust") (r "^0.2") (d #t) (t "cfg(not(target_os = \"linux\"))") (k 0)) (d (n "napi") (r "^2") (d #t) (k 0)) (d (n "napi-build") (r "^2") (d #t) (k 1)) (d (n "napi-derive") (r "^2") (d #t) (k 0)))) (h "12mgabjzzz821mlkg4322c13rgsp0wmkmv3iq1nxyr9k2gqq85lv")))

