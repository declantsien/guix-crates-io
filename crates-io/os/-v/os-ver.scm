(define-module (crates-io os -v os-ver) #:use-module (crates-io))

(define-public crate-os-ver-0.1.0 (c (n "os-ver") (v "0.1.0") (d (list (d (n "lazy_static") (r "^1.4.0") (d #t) (k 0)) (d (n "libc") (r "^0.2") (d #t) (t "cfg(target_os = \"linux\")") (k 0)) (d (n "objc2") (r "^0.5") (d #t) (t "cfg(target_os = \"ios\")") (k 0)) (d (n "objc2") (r "^0.5") (d #t) (t "cfg(target_os = \"macos\")") (k 0)) (d (n "objc2-foundation") (r "^0.2.0") (f (quote ("NSString"))) (d #t) (t "cfg(target_os = \"ios\")") (k 0)) (d (n "objc2-foundation") (r "^0.2.0") (f (quote ("NSProcessInfo" "NSString"))) (d #t) (t "cfg(target_os = \"macos\")") (k 0)) (d (n "windows-version") (r "^0.1.0") (d #t) (t "cfg(target_os = \"windows\")") (k 0)))) (h "15q6ypia36jb21mxlfn1k08wysdppak5pm12qil9lllg1ip1w2iz")))

