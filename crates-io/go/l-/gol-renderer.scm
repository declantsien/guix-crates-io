(define-module (crates-io go l- gol-renderer) #:use-module (crates-io))

(define-public crate-gol-renderer-0.1.0 (c (n "gol-renderer") (v "0.1.0") (h "0j5qdxg4xh0c85mn1nmhjkir8dhcybnk9in11sn145pqj534fxaf")))

(define-public crate-gol-renderer-0.2.0 (c (n "gol-renderer") (v "0.2.0") (d (list (d (n "gol-core") (r "^0.3.0") (d #t) (k 0)) (d (n "rayon") (r "^1.5.0") (d #t) (k 0)))) (h "0s0ajya4ykl9lhp7dg6i77p7kn8jsnh23ncsx5yblhmx5khfhw27")))

(define-public crate-gol-renderer-0.3.0 (c (n "gol-renderer") (v "0.3.0") (d (list (d (n "gol-core") (r "^0.4.0") (d #t) (k 0)) (d (n "rayon") (r "^1.5.0") (d #t) (k 0)))) (h "1ag01mn7004m46473jk5xb3jh8ck1wrjz8v564ybxzqqjw4djfw9")))

(define-public crate-gol-renderer-1.0.0 (c (n "gol-renderer") (v "1.0.0") (d (list (d (n "backend") (r "=0.7.0") (d #t) (t "cfg(all(unix, not(target_os = \"macos\"), not(target_os = \"$ARCH-pc-windows-gnu\")))") (k 0) (p "gfx-backend-vulkan")) (d (n "backend") (r "=0.7.0") (d #t) (t "cfg(target_os = \"macos\")") (k 0) (p "gfx-backend-metal")) (d (n "backend") (r "=0.7.0") (d #t) (t "cfg(windows)") (k 0) (p "gfx-backend-dx12")) (d (n "gfx-hal") (r "^0.7.0") (d #t) (k 0)) (d (n "gol-core") (r "^1.0.0") (d #t) (k 0)) (d (n "ncurses") (r "^5.101.0") (o #t) (d #t) (k 0)) (d (n "num-traits") (r "^0.2.14") (d #t) (k 0)) (d (n "rayon") (r "^1.5.0") (d #t) (k 0)) (d (n "rgb") (r "^0.8.27") (d #t) (k 0)) (d (n "shaderc") (r "^0.7.2") (d #t) (k 0)) (d (n "tokio") (r "^1.4.0") (f (quote ("sync"))) (d #t) (k 0)) (d (n "winit") (r "^0.24.0") (d #t) (k 0)))) (h "1al1gjc4s66hq9kfm03nk2bf2f11xbvfs7m9cizy4a09x97fyjx3") (f (quote (("default") ("ascii" "ncurses"))))))

