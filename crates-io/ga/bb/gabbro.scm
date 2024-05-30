(define-module (crates-io ga bb gabbro) #:use-module (crates-io))

(define-public crate-gabbro-0.1.0 (c (n "gabbro") (v "0.1.0") (d (list (d (n "env_logger") (r "^0.10.0") (o #t) (d #t) (k 0)) (d (n "log") (r "^0.4.17") (f (quote ("max_level_trace" "release_max_level_info"))) (d #t) (k 0)) (d (n "sdl2") (r "^0.35.2") (o #t) (d #t) (k 0)))) (h "0q077824kx06p9ga5n6vc124pb7bls6pp0lrawf7d72ilha4y68y") (s 2) (e (quote (("sdl2" "dep:sdl2") ("logger" "dep:env_logger"))))))

(define-public crate-gabbro-0.2.0 (c (n "gabbro") (v "0.2.0") (d (list (d (n "crossterm") (r "^0.25") (o #t) (d #t) (k 0)) (d (n "env_logger") (r "^0.10.0") (o #t) (d #t) (k 0)) (d (n "log") (r "^0.4.17") (f (quote ("max_level_trace" "release_max_level_info"))) (d #t) (k 0)) (d (n "sdl2") (r "^0.35.2") (f (quote ("bundled"))) (o #t) (d #t) (k 0)) (d (n "tui") (r "^0.19") (o #t) (d #t) (k 0)))) (h "01k2z2myw9xmc07nkikkf9iq8c2jcmc18h9c7wl4apdwsijkhnkn") (f (quote (("default" "logger")))) (s 2) (e (quote (("sdl2" "dep:sdl2") ("logger" "dep:env_logger") ("debug" "dep:tui" "dep:crossterm"))))))

