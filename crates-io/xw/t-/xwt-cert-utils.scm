(define-module (crates-io xw t- xwt-cert-utils) #:use-module (crates-io))

(define-public crate-xwt-cert-utils-0.1.0 (c (n "xwt-cert-utils") (v "0.1.0") (d (list (d (n "base64") (r "^0.21") (o #t) (d #t) (k 0)) (d (n "pem") (r "^3") (d #t) (k 0)) (d (n "rcgen") (r "^0.12") (o #t) (d #t) (k 0)) (d (n "ring") (r "^0.17") (f (quote ("wasm32_unknown_unknown_js"))) (o #t) (d #t) (k 0)) (d (n "time") (r "^0.3") (d #t) (k 0)))) (h "0rxnrs9kxx28bwhm3nvspslxy573cq8p2mqrycxayffp4gyp88sg") (f (quote (("fingerprint-sha256" "digest-sha256") ("fingerprint-all" "fingerprint-rfc7469" "fingerprint-sha256") ("digest-all" "digest-sha256") ("default" "rcgen" "digest-all" "fingerprint-all")))) (s 2) (e (quote (("fingerprint-rfc7469" "digest-sha256" "dep:base64") ("digest-sha256" "dep:ring"))))))

