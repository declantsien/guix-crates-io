(define-module (crates-io pr ox proxy-sdk) #:use-module (crates-io))

(define-public crate-proxy-sdk-1.0.0 (c (n "proxy-sdk") (v "1.0.0") (d (list (d (n "derive_builder") (r "^0.12.0") (k 0)) (d (n "getrandom") (r "^0.2") (f (quote ("custom"))) (d #t) (t "cfg(target_arch = \"wasm32\")") (k 0)) (d (n "log") (r "^0.4") (k 0)) (d (n "once_cell") (r "^1.17") (d #t) (k 0)) (d (n "prost") (r "^0.11") (f (quote ("std"))) (k 0)) (d (n "prost-build") (r "^0.11") (d #t) (k 1)) (d (n "prost-types") (r "^0.11") (k 0)) (d (n "wasi") (r "^0.11.0") (t "cfg(target_arch = \"wasm32\")") (k 0)))) (h "0wgcx59q2gfinwg0mzijv34mkxdr14q12q9ki3za48qbi10v6j12") (f (quote (("stream-metadata") ("default"))))))

