(define-module (crates-io cr os crosscurses) #:use-module (crates-io))

(define-public crate-crosscurses-0.1.0 (c (n "crosscurses") (v "0.1.0") (d (list (d (n "libc") (r "^0.2") (d #t) (k 0)) (d (n "log") (r "^0.4") (d #t) (k 0)) (d (n "ncurses") (r "^5.99.0") (d #t) (t "cfg(unix)") (k 0)) (d (n "pdcurses-sys") (r "^0.7") (d #t) (t "cfg(windows)") (k 0)) (d (n "rand") (r "^0.7.2") (d #t) (k 2)) (d (n "winreg") (r "^0.6.2") (d #t) (t "cfg(windows)") (k 0)))) (h "0w452g5xwpjw51qi4y5gzz194fa85v39z93bm1b741f0gni4nzgy") (f (quote (("win32a" "pdcurses-sys/win32a") ("win32" "pdcurses-sys/win32") ("wide" "ncurses/wide") ("show_menu") ("disable_resize"))))))

