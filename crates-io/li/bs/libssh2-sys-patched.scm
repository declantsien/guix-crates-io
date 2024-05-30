(define-module (crates-io li bs libssh2-sys-patched) #:use-module (crates-io))

(define-public crate-libssh2-sys-patched-0.3.0-p1 (c (n "libssh2-sys-patched") (v "0.3.0-p1") (d (list (d (n "cc") (r "^1.0.25") (d #t) (k 1)) (d (n "libc") (r "^0.2") (d #t) (k 0)) (d (n "libz-sys") (r "^1.1.0") (f (quote ("libc"))) (k 0)) (d (n "openssl-sys") (r "^0.9.35") (d #t) (t "cfg(unix)") (k 0)) (d (n "openssl-sys") (r "^0.9.35") (o #t) (d #t) (t "cfg(windows)") (k 0)) (d (n "pkg-config") (r "^0.3.11") (d #t) (k 1)) (d (n "vcpkg") (r "^0.2") (d #t) (t "cfg(target_env = \"msvc\")") (k 1)))) (h "0gl8r85j11bk2vj3k54cwgi5fbwc1jky85c75mrf1mld5v180d0g") (f (quote (("zlib-ng-compat" "libz-sys/zlib-ng") ("vendored-openssl" "openssl-sys/vendored") ("openssl-on-win32" "openssl-sys")))) (y #t) (l "ssh2")))

