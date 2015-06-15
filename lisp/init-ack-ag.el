;;(require-package 'ack-and-a-half)
;;(require 'ack-and-a-half)

;; alias for ack-and-a-half, since it's too long to type
;;(defalias 'ack 'ack-and-a-half)
;;(defalias 'ack-same 'ack-and-a-half-same)
;;(defalias 'ack-find-file 'ack-and-a-half-find-file)
;;(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

(require-package 'ag)
(require 'ag)
(setq ag-highlight-search t)

(provide 'init-ack-ag)
