(define-module (crates-io ma il maily) #:use-module (crates-io))

(define-public crate-maily-0.0.0 (c (n "maily") (v "0.0.0") (h "039qnd0h0sh7jg1qf0b12jcmaz4pylmkgcqpfpxrv883yap4vimg")))

(define-public crate-maily-0.2.0 (c (n "maily") (v "0.2.0") (d (list (d (n "anyhow") (r "^1.0.80") (f (quote ("std"))) (k 0)) (d (n "lettre") (r "^0.11") (f (quote ("builder" "smtp-transport" "tokio1" "tokio1-native-tls"))) (k 0)) (d (n "sequoia-cert-store") (r "^0.5") (o #t) (k 0)) (d (n "sequoia-openpgp") (r "^1.18") (f (quote ("crypto-nettle"))) (o #t) (k 0)) (d (n "serde") (r "^1.0") (f (quote ("derive" "std"))) (o #t) (k 0)) (d (n "serde_json") (r "^1.0") (f (quote ("std"))) (o #t) (k 0)) (d (n "tokio") (r "^1.0") (f (quote ("fs"))) (o #t) (k 0)))) (h "00w6pj0wnjp8irzmdk5z9y56aml3h30q0cfcq4dqxvf6cqs4wwxm") (f (quote (("default")))) (s 2) (e (quote (("pgp" "dep:sequoia-cert-store" "dep:sequoia-openpgp") ("config" "dep:serde" "dep:serde_json" "dep:tokio"))))))

