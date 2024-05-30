(define-module (crates-io br ee breezy) #:use-module (crates-io))

(define-public crate-breezy-3.3.0 (c (n "breezy") (v "3.3.0") (d (list (d (n "pkg-version") (r "^1.0.0") (d #t) (k 0)) (d (n "pyo3") (r ">=0.14, <0.16") (d #t) (k 0)))) (h "1yghxj0fk0v19qvgbbrnclg2r2h4y56ycs7knllgicjckfapc5pl")))

(define-public crate-breezy-3.3.4 (c (n "breezy") (v "3.3.4") (d (list (d (n "breezy-osutils") (r ">=3.3.4") (d #t) (k 0)) (d (n "chrono") (r "^0.4") (d #t) (k 0)) (d (n "gettext-rs") (r "^0.7") (o #t) (d #t) (k 0)) (d (n "log") (r "^0.4") (d #t) (k 0)) (d (n "nix") (r ">=0.26") (d #t) (t "cfg(unix)") (k 0)) (d (n "pyo3") (r ">=0.17, <0.19") (d #t) (k 0)))) (h "11iq77499bm1q1d1kn8l41fpvllrd9ll8n070b50vkgbiwzziizx") (f (quote (("default" "i18n")))) (s 2) (e (quote (("i18n" "dep:gettext-rs"))))))

