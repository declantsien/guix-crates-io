(define-module (crates-io bl oo bloock-storage) #:use-module (crates-io))

(define-public crate-bloock-storage-0.1.0 (c (n "bloock-storage") (v "0.1.0") (d (list (d (n "async-trait") (r "^0.1.80") (d #t) (k 0)) (d (n "rand") (r "^0.8.5") (d #t) (k 2)) (d (n "rocksdb") (r "^0.22.0") (f (quote ("zlib" "bzip2"))) (o #t) (k 0)) (d (n "thiserror") (r "^1.0.61") (d #t) (k 0)) (d (n "tokio") (r "^1.37.0") (f (quote ("fs"))) (d #t) (k 0)) (d (n "tracing") (r "^0.1.40") (d #t) (k 0)))) (h "160ggy01whddcyllr4nfmgkgp6kdsv357k2y2bkvli9wra2mhwzp") (f (quote (("kv_rocks" "kv" "rocksdb") ("kv_hashmap" "kv") ("kv") ("fs") ("default" "blob" "kv_rocks") ("blob_rocks" "blob" "rocksdb") ("blob_fs" "blob" "fs") ("blob"))))))

