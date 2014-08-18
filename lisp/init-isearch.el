;; Show number of matches while searching
(require-package 'anzu)
(global-anzu-mode t)
(diminish 'anzu-mode)
(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
(global-set-key [remap query-replace] 'anzu-query-replace)


;; Activate occur easily inside isearch
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

(provide 'init-isearch)
