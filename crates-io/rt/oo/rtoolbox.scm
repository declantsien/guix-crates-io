(define-module (crates-io rt oo rtoolbox) #:use-module (crates-io))

(define-public crate-rtoolbox-0.0.1 (c (n "rtoolbox") (v "0.0.1") (d (list (d (n "libc") (r "^0.2") (d #t) (t "cfg(unix)") (k 0)) (d (n "serde") (r "^1.0") (f (quote ("derive"))) (o #t) (d #t) (k 0)) (d (n "serde_json") (r "^1.0") (o #t) (d #t) (k 0)) (d (n "winapi") (r "^0.3") (f (quote ("std" "winnt" "fileapi" "processenv" "winbase" "handleapi" "consoleapi" "minwindef" "wincon"))) (d #t) (t "cfg(windows)") (k 0)))) (h "0jjjngwn1fa39kschc8zb4hynp4b0jdind7z225cph7m2k2j4kh3") (s 2) (e (quote (("serde" "dep:serde" "dep:serde_json"))))))

(define-public crate-rtoolbox-0.0.2 (c (n "rtoolbox") (v "0.0.2") (d (list (d (n "libc") (r "^0.2") (d #t) (t "cfg(unix)") (k 0)) (d (n "serde") (r "^1.0") (f (quote ("derive"))) (o #t) (d #t) (k 0)) (d (n "serde_json") (r "^1.0") (o #t) (d #t) (k 0)) (d (n "windows-sys") (r "^0.48") (f (quote ("Win32_Foundation" "Win32_Security" "Win32_Storage_FileSystem" "Win32_System_Console" "Win32_System_SystemServices"))) (d #t) (t "cfg(windows)") (k 0)))) (h "03n9z8x353kylxhr9im8zawcisnmid3jiqrs8rbdn313cd7d4iy2") (s 2) (e (quote (("serde" "dep:serde" "dep:serde_json"))))))

