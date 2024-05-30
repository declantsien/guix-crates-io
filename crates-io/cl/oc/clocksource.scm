(define-module (crates-io cl oc clocksource) #:use-module (crates-io))

(define-public crate-clocksource-0.1.0 (c (n "clocksource") (v "0.1.0") (d (list (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "1gq1jg3g150jxaqz98r1n2k8wrlbfrh6nxqlcjqcabyadszrnqbb") (f (quote (("default") ("asm"))))))

(define-public crate-clocksource-0.2.0 (c (n "clocksource") (v "0.2.0") (d (list (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "02rjipcb2dd6p5d1s1fcwwqxjgiz5352hq71q8ka7p9d83nz3dsj") (f (quote (("default") ("asm"))))))

(define-public crate-clocksource-0.2.1 (c (n "clocksource") (v "0.2.1") (d (list (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "135g5gnwx9a1xzq7f350gzxd9fyg1n0gq7vf6ri5idnn3b91rmff") (f (quote (("default") ("asm"))))))

(define-public crate-clocksource-0.2.2 (c (n "clocksource") (v "0.2.2") (d (list (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "1wp8dny8wy2h7rlpbbsc8jjf0ma9cwhqrpqr5wrbrynag5xixcvp") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.2.3 (c (n "clocksource") (v "0.2.3") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "0sp6yh151bfw7026l932qdw8drnzla0igqdw74vvcnlv325qm19s") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.2.4-pre (c (n "clocksource") (v "0.2.4-pre") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "15yh81yl5yh4jybnb4b421f2y98pyx2j4jah78dkzc52spqq5c8m") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.2.4 (c (n "clocksource") (v "0.2.4") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)))) (h "048a240k9rd40ilpvqxf87hv1x43m01zb47qggk0ylb1mi3fikzz") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.3.0 (c (n "clocksource") (v "0.3.0") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "lazy_static") (r "^1.0") (d #t) (t "cfg(windows)") (k 0)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)) (d (n "winapi") (r "^0.3.4") (f (quote ("profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "0rafy96kchy3kjp0i582ajlhdgx07ayrimmqjr5bhdc61sipgfkk") (f (quote (("rdtsc") ("default") ("asm" "rdtsc")))) (y #t)))

(define-public crate-clocksource-0.4.0 (c (n "clocksource") (v "0.4.0") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "lazy_static") (r "^1.0") (d #t) (t "cfg(windows)") (k 0)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)) (d (n "winapi") (r "^0.3.4") (f (quote ("profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "08fdb8m0n8m1cjsvhm8rch1x931iyz260h4fll2vj2drgn7l5vjm") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.5.0 (c (n "clocksource") (v "0.5.0") (d (list (d (n "allan") (r "^0.2.3") (d #t) (k 2)) (d (n "lazy_static") (r "^1.0") (d #t) (t "cfg(all(not(windows), not(unix), not(target_os = \"macos\"), not(target_os = \"ios\")))") (k 0)) (d (n "lazy_static") (r "^1.0") (d #t) (t "cfg(windows)") (k 0)) (d (n "libc") (r "^0.2.15") (d #t) (k 0)) (d (n "mach") (r "^0.3") (d #t) (t "cfg(any(target_os = \"macos\", target_os = \"ios\"))") (k 0)) (d (n "winapi") (r "^0.3.4") (f (quote ("profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "14k5a499982mmvf1165qflvnh7q0s00w2xj2fbmssv36z5pmg1vw") (f (quote (("rdtsc") ("default") ("asm" "rdtsc"))))))

(define-public crate-clocksource-0.6.0 (c (n "clocksource") (v "0.6.0") (d (list (d (n "criterion") (r "^0.3.6") (d #t) (k 2)) (d (n "lazy_static") (r "^1.4.0") (d #t) (t "cfg(all(not(windows), not(unix), not(target_os = \"macos\"), not(target_os = \"ios\")))") (k 0)) (d (n "lazy_static") (r "^1.4.0") (d #t) (t "cfg(windows)") (k 0)) (d (n "libc") (r "^0.2.132") (d #t) (k 0)) (d (n "mach") (r "^0.3.2") (d #t) (t "cfg(any(target_os = \"macos\", target_os = \"ios\"))") (k 0)) (d (n "time") (r "^0.3.14") (f (quote ("formatting"))) (d #t) (k 0)) (d (n "winapi") (r "^0.3.9") (f (quote ("profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "11w3fcr292sdw7iz1zazdnm72b1wgbdba27h4drdk9ljqg7c835r")))

(define-public crate-clocksource-0.7.0 (c (n "clocksource") (v "0.7.0") (d (list (d (n "libc") (r "^0.2.147") (d #t) (k 0)) (d (n "time") (r "^0.3.27") (f (quote ("formatting"))) (d #t) (k 0)))) (h "02l8b1zhxbgfy9d95im89qgdwh23gzzml7dh24zq0vj018lri31m")))

(define-public crate-clocksource-0.7.1 (c (n "clocksource") (v "0.7.1") (d (list (d (n "libc") (r "^0.2.147") (d #t) (k 0)) (d (n "time") (r "^0.3.27") (f (quote ("formatting"))) (d #t) (k 0)))) (h "17qga51m11sxj9vlkvli2ya52m66mw807gsq3ifwn32hs0l9i6ri")))

(define-public crate-clocksource-0.8.0 (c (n "clocksource") (v "0.8.0") (d (list (d (n "libc") (r "^0.2.147") (d #t) (k 0)) (d (n "time") (r "^0.3.27") (f (quote ("formatting"))) (d #t) (k 0)) (d (n "winapi") (r "^0.3.9") (f (quote ("ntdef" "profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "0bjw85xn7pw2lp25svq0r6q5fhaf1y0y53h1h4lq2sd1lhz51jpk")))

(define-public crate-clocksource-0.8.1 (c (n "clocksource") (v "0.8.1") (d (list (d (n "libc") (r "^0.2.147") (d #t) (k 0)) (d (n "time") (r "^0.3.27") (f (quote ("formatting"))) (d #t) (k 0)) (d (n "winapi") (r "^0.3.9") (f (quote ("ntdef" "profileapi" "sysinfoapi"))) (d #t) (t "cfg(windows)") (k 0)))) (h "17jfwj304lyj1gmnms557r8rwn3racx8y98nd7cr55cabbfjd40j")))

