(define-module (crates-io fu tu futures-timeout) #:use-module (crates-io))

(define-public crate-futures-timeout-0.1.0 (c (n "futures-timeout") (v "0.1.0") (d (list (d (n "futures") (r "^0.3") (d #t) (k 0)) (d (n "futures-timer") (r "^3.0") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "futures-timer") (r "^3.0") (f (quote ("wasm-bindgen"))) (d #t) (t "cfg(target_arch = \"wasm32\")") (k 0)) (d (n "pin-project") (r "^1") (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("full"))) (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 2)))) (h "0fy5gl4l6vksxm9prgpjcgxap3k7fnsjg6brdiqd6nb9sb5jxx0d") (r "1.75")))

