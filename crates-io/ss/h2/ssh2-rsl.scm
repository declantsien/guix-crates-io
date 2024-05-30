(define-module (crates-io ss h2 ssh2-rsl) #:use-module (crates-io))

(define-public crate-ssh2-rsl-0.1.0 (c (n "ssh2-rsl") (v "0.1.0") (d (list (d (n "cc") (r "^1.0.25") (d #t) (k 1)) (d (n "libc") (r "^0.2") (d #t) (k 0)) (d (n "libz-sys") (r "^1.1.0") (f (quote ("libc"))) (k 0)) (d (n "openssl-sys") (r "^0.9.35") (d #t) (t "cfg(unix)") (k 0)) (d (n "openssl-sys") (r "^0.9.35") (o #t) (d #t) (t "cfg(windows)") (k 0)) (d (n "pkg-config") (r "^0.3.11") (d #t) (k 1)) (d (n "vcpkg") (r "^0.2") (d #t) (t "cfg(target_env = \"msvc\")") (k 1)))) (h "0l5l21awipgzcxjc09c50zsz5kzvn7mrpwb233ll9plcbb923l26") (f (quote (("zlib-ng-compat" "libz-sys/zlib-ng") ("vendored-openssl" "openssl-sys/vendored") ("openssl-on-win32" "openssl-sys")))) (l "ssh2")))

