(define-module (crates-io mc -r mc-rand) #:use-module (crates-io))

(define-public crate-mc-rand-1.0.0 (c (n "mc-rand") (v "1.0.0") (d (list (d (n "cfg-if") (r "^1.0") (d #t) (k 0)) (d (n "rand") (r "^0.8") (k 0)) (d (n "rand_core") (r "^0.6") (k 0)))) (h "1dpwbf4icjdd7a1mcxhaknv957mil6nsgl310fgl3b8xf1jszg1q") (f (quote (("std" "rand_core/std" "rand/std" "rand/std_rng") ("default")))) (r "1.68")))

(define-public crate-mc-rand-1.1.0 (c (n "mc-rand") (v "1.1.0") (d (list (d (n "cfg-if") (r "^1.0") (d #t) (k 0)) (d (n "getrandom") (r "^0.2") (f (quote ("js"))) (d #t) (t "cfg(all(any(target_arch = \"wasm32\", target_arch = \"wasm64\"), target_os = \"unknown\"))") (k 2)) (d (n "rand") (r "^0.8") (k 0)) (d (n "rand") (r "^0.8") (f (quote ("std" "std_rng"))) (d #t) (t "cfg(not(target_feature = \"rdrand\"))") (k 0)) (d (n "rand_core") (r "^0.6") (k 0)) (d (n "wasm-bindgen-test") (r "^0.2") (d #t) (t "cfg(all(any(target_arch = \"wasm32\", target_arch = \"wasm64\"), target_os = \"unknown\"))") (k 2)))) (h "1a7lxjcyj7v54hlrgscvyaqj9v7yb0v09imwv3pvq56izxnzhn6f") (f (quote (("std" "rand_core/std" "rand/std" "rand/std_rng") ("default")))) (r "1.68")))

