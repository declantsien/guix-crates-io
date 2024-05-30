(define-module (crates-io lu mi luminal_cudarc) #:use-module (crates-io))

(define-public crate-luminal_cudarc-0.10.0 (c (n "luminal_cudarc") (v "0.10.0") (d (list (d (n "half") (r "^2.3.1") (f (quote ("num-traits" "rand_distr"))) (o #t) (k 0)) (d (n "no-std-compat") (r "^0.4.1") (f (quote ("alloc"))) (o #t) (d #t) (k 0)) (d (n "spin") (r "^0.9.8") (f (quote ("rwlock"))) (o #t) (k 0)))) (h "1f0fl6wr16h038xxmarn1vrjf671nja2is87ki7w3vkkpgc8xkwq") (f (quote (("std") ("static-linking") ("nvrtc") ("nccl" "driver") ("driver" "nvrtc") ("default" "std" "driver" "nvrtc" "cublas" "curand") ("curand" "driver") ("cudnn" "driver") ("cublaslt" "driver") ("cublas" "driver") ("ci-check")))) (s 2) (e (quote (("no-std" "no-std-compat/std" "dep:spin") ("f16" "dep:half"))))))

