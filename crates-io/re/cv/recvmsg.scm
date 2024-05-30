(define-module (crates-io re cv recvmsg) #:use-module (crates-io))

(define-public crate-recvmsg-1.0.0 (c (n "recvmsg") (v "1.0.0") (d (list (d (n "libc") (r "^0.2.150") (o #t) (d #t) (t "cfg(unix)") (k 0)) (d (n "tokio") (r "^1.34.0") (f (quote ("net"))) (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1.34.0") (f (quote ("rt" "net" "macros"))) (d #t) (k 2)) (d (n "windows-sys") (r "^0.52.0") (f (quote ("Win32_Networking_WinSock"))) (o #t) (d #t) (t "cfg(windows)") (k 0)))) (h "0xa173gbg1cx8q7wyzi6c4kmcsz5rka68r4jb6kg14icskax9vfk") (f (quote (("std_net" "std" "libc" "windows-sys") ("std") ("default")))) (s 2) (e (quote (("tokio" "dep:tokio" "std_net")))) (r "1.60.0")))

