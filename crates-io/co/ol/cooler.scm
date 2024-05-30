(define-module (crates-io co ol cooler) #:use-module (crates-io))

(define-public crate-cooler-0.0.0 (c (n "cooler") (v "0.0.0") (d (list (d (n "backend") (r "^0.6.3") (d #t) (t "cfg(target_os = \"macos\")") (k 0) (p "gfx-backend-metal")) (d (n "backend") (r "^0.6.3") (f (quote ("x11" "xcb"))) (d #t) (t "cfg(all(unix, not(target_os = \"macos\")))") (k 0) (p "gfx-backend-vulkan")) (d (n "backend") (r "^0.6.6") (d #t) (t "cfg(windows)") (k 0) (p "gfx-backend-dx12")) (d (n "dispose") (r "^0.2.1") (d #t) (k 0)) (d (n "gfx-hal") (r "^0.6.0") (d #t) (k 0)) (d (n "imgui") (r "^0.5.0") (d #t) (k 0)))) (h "1gz77i1h10p8bds0bczhpzq08zdlxymw3sd55rd5liiykynyp65p")))

