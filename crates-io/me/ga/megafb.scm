(define-module (crates-io me ga megafb) #:use-module (crates-io))

(define-public crate-megafb-0.0.1 (c (n "megafb") (v "0.0.1") (d (list (d (n "gfx-backend-dx12") (r "^0.2") (o #t) (d #t) (t "cfg(windows)") (k 0)) (d (n "gfx-backend-metal") (r "^0.2") (o #t) (d #t) (t "cfg(target_os = \"macos\")") (k 0)) (d (n "gfx-backend-vulkan") (r "^0.2") (o #t) (d #t) (k 0)) (d (n "gfx-hal") (r "^0.2") (d #t) (k 0)) (d (n "shaderc") (r "^0.6") (d #t) (k 0)) (d (n "winit") (r "^0.20.0-alpha2") (d #t) (k 0)))) (h "08cjgf3nvjw3n5d5mnbv86hwqkhj4jmbgw907hy14rd45iwqrnlk") (f (quote (("vulkan" "gfx-backend-vulkan") ("metal" "gfx-backend-metal") ("dx12" "gfx-backend-dx12") ("default"))))))

