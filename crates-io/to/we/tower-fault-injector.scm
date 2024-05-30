(define-module (crates-io to we tower-fault-injector) #:use-module (crates-io))

(define-public crate-tower-fault-injector-0.0.1 (c (n "tower-fault-injector") (v "0.0.1") (d (list (d (n "rand") (r "^0.8") (d #t) (k 0)) (d (n "tower") (r "^0.4") (d #t) (k 0)))) (h "1sx70mngcskq9vips55p367va3875sjsjs1sz01ar2l6fq7r41kv")))

(define-public crate-tower-fault-injector-0.0.2 (c (n "tower-fault-injector") (v "0.0.2") (d (list (d (n "rand") (r "^0.8") (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("time"))) (d #t) (k 0)) (d (n "tower") (r "^0.4") (d #t) (k 0)))) (h "07607qgl14fc4c9yl6qzz9cvj6786li3akds8ii6rdl10wqilbk4")))

(define-public crate-tower-fault-injector-0.0.3 (c (n "tower-fault-injector") (v "0.0.3") (d (list (d (n "rand") (r "^0.8") (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("time"))) (o #t) (d #t) (k 0)) (d (n "tower") (r "^0.4") (d #t) (k 0)))) (h "1ggnq9vj6n5zdjb7wqvzbz110nlgcwwjv3g06bkfvy2gxc7jax1j") (f (quote (("latency" "rand" "tokio") ("default"))))))

(define-public crate-tower-fault-injector-0.0.4 (c (n "tower-fault-injector") (v "0.0.4") (d (list (d (n "axum") (r "^0.4") (d #t) (k 2)) (d (n "lambda_http") (r "^0.5") (d #t) (k 2)) (d (n "rand") (r "^0.8") (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("time" "rt" "macros"))) (o #t) (d #t) (k 0)) (d (n "tokio") (r "^1") (f (quote ("full"))) (d #t) (k 2)) (d (n "tower") (r "^0.4") (f (quote ("util"))) (d #t) (k 0)))) (h "1nj666hlc3i0sp1i684gns83kxwhp6rhygalwln81kdf9gsqb26s") (f (quote (("latency" "rand" "tokio") ("full" "error" "latency") ("error" "rand" "tokio") ("default" "full"))))))

