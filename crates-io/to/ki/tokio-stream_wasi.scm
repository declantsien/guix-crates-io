(define-module (crates-io to ki tokio-stream_wasi) #:use-module (crates-io))

(define-public crate-tokio-stream_wasi-0.1.11 (c (n "tokio-stream_wasi") (v "0.1.11") (d (list (d (n "futures-core") (r "^0.3.0") (d #t) (k 0)) (d (n "pin-project-lite") (r "^0.2.0") (d #t) (k 0)) (d (n "proptest") (r "^1") (d #t) (t "cfg(not(target_arch = \"wasm32\"))") (k 2)) (d (n "tokio-util_wasi") (r "^0.7") (o #t) (d #t) (k 0)) (d (n "tokio_wasi") (r "^1") (f (quote ("sync"))) (d #t) (k 0)))) (h "1v3l7xddw5z4lr0chz92ld545zqbnq5h0ig3kashmi3a44y9h9pr") (f (quote (("time" "tokio_wasi/time") ("sync" "tokio_wasi/sync" "tokio-util_wasi") ("signal" "tokio_wasi/signal") ("net" "tokio_wasi/net") ("io-util" "tokio_wasi/io-util") ("fs" "tokio_wasi/fs") ("default" "time")))) (r "1.49")))

