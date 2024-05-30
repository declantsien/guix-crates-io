(define-module (crates-io du dy dudy-malloc) #:use-module (crates-io))

(define-public crate-dudy-malloc-0.1.0 (c (n "dudy-malloc") (v "0.1.0") (d (list (d (n "mimalloc-rust") (r "^0.2") (d #t) (t "cfg(not(target_os = \"linux\"))") (k 0)) (d (n "tikv-jemallocator") (r "^0.4") (f (quote ("disable_initial_exec_tls"))) (d #t) (t "cfg(all(target_os = \"linux\", target_env = \"gnu\", any(target_arch = \"x86_64\", target_arch = \"aarch64\")))") (k 0)))) (h "0sfkxdaw5ag2wia1dhvik44496cndvc0q0yv03rvifps81r4b4vn")))

(define-public crate-dudy-malloc-0.1.1 (c (n "dudy-malloc") (v "0.1.1") (d (list (d (n "mimalloc-rust") (r "^0.2") (d #t) (t "cfg(not(target_os = \"linux\"))") (k 0)) (d (n "tikv-jemallocator") (r "^0.4") (f (quote ("disable_initial_exec_tls"))) (d #t) (t "cfg(all(target_os = \"linux\", target_env = \"gnu\", any(target_arch = \"x86_64\", target_arch = \"aarch64\")))") (k 0)))) (h "0j75r9377vxgr8z9vmxgmv1g96wdyprn0qvjyq12lzd1gqnn65sg")))

