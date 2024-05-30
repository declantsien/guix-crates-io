(define-module (crates-io no ti notifrust) #:use-module (crates-io))

(define-public crate-notifrust-3.5.0 (c (n "notifrust") (v "3.5.0") (d (list (d (n "dbus") (r "^0.6") (d #t) (t "cfg(all(unix, not(target_os = \"macos\")))") (k 0)) (d (n "error-chain") (r "^0.12") (d #t) (k 0)) (d (n "image") (r "^0.20") (o #t) (d #t) (t "cfg(all(unix, not(target_os = \"macos\")))") (k 0)) (d (n "lazy_static") (r "^1.1") (o #t) (d #t) (t "cfg(all(unix, not(target_os = \"macos\")))") (k 0)) (d (n "mac-notification-sys") (r "^0.1") (d #t) (t "cfg(target_os = \"macos\")") (k 0)))) (h "180gzpw68x3766brww0vw3y94bmpzswr7wafmvhkmnzlbr05wxzk") (f (quote (("images" "image" "lazy_static") ("default") ("debug_namespace"))))))

