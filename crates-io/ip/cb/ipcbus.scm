(define-module (crates-io ip cb ipcbus) #:use-module (crates-io))

(define-public crate-ipcbus-0.1.0 (c (n "ipcbus") (v "0.1.0") (d (list (d (n "tracing") (r "^0.1.35") (d #t) (k 0)) (d (n "event-listener") (r "^2.5.2") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "fslock") (r "^0.2.1") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "libc") (r "^0.2") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "nix") (r "^0.24.1") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "socket2") (r "^0.4.4") (f (quote ("all"))) (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 0)) (d (n "futures") (r "^0.3.21") (d #t) (t "cfg(target_arch = \"wasm32\")") (k 0)))) (h "1niyxnjpv577mkyya2579b96nihazn6s4bcjhh01bdr5b3qwdhnc") (f (quote (("default"))))))

