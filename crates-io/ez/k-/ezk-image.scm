(define-module (crates-io ez k- ezk-image) #:use-module (crates-io))

(define-public crate-ezk-image-0.1.0 (c (n "ezk-image") (v "0.1.0") (d (list (d (n "criterion") (r "^0.5") (d #t) (k 2)) (d (n "fir") (r "^4") (o #t) (d #t) (k 0) (p "fast_image_resize")) (d (n "image") (r "^0.25") (f (quote ("png"))) (k 2)) (d (n "nalgebra") (r "^0.32") (d #t) (k 2)) (d (n "num_cpus") (r "^1.0") (o #t) (d #t) (k 0)) (d (n "rayon") (r "^1.9") (o #t) (d #t) (k 0)))) (h "0i90dr6mwjpy3xqbcw0z9wgilxlg0lwmjsasw4l5n4si9aa2qav7") (f (quote (("unstable") ("default" "multi-thread" "resize")))) (s 2) (e (quote (("resize" "dep:fir") ("multi-thread" "dep:rayon" "dep:num_cpus"))))))

