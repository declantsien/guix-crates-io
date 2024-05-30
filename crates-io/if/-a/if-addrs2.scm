(define-module (crates-io if -a if-addrs2) #:use-module (crates-io))

(define-public crate-if-addrs2-0.10.2 (c (n "if-addrs2") (v "0.10.2") (d (list (d (n "libc") (r "^0.2") (d #t) (t "cfg(not(target_os = \"windows\"))") (k 0)) (d (n "widestring") (r "^1.0.2") (d #t) (t "cfg(target_os = \"windows\")") (k 0)) (d (n "windows-sys") (r "^0.45.0") (f (quote ("Win32_Foundation" "Win32_System_Memory" "Win32_Networking_WinSock" "Win32_NetworkManagement_IpHelper" "Win32_NetworkManagement_Ndis"))) (d #t) (t "cfg(target_os = \"windows\")") (k 0)))) (h "16kfqnazjj6rghy8irhbk21fir4a2kp13cnai9fj25af5q9arskf") (f (quote (("link-local"))))))

