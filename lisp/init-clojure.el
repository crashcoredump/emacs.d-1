(require-package 'cider)
;; CIDER
;; Hide *nrepl-connection* and *nrepl-server* buffers
(setq nrepl-hide-special-buffers t)
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-wrap-history t)
(setq cider-repl-use-clojure-font-lock t)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook
          (lambda () (setq show-trailing-whitespace nil)))

(after-load 'cider
  ;; unbind C-c C-m, it's for magit-status
  (define-key cider-mode-map (kbd "C-c C-m") nil))

;; (require 'monroe)
;; (add-hook 'clojure-mode-hook 'clojure-enable-monroe)

;; Use clojure-mode for clojurescript, since clojurescript-mode
;; pulls in Slime
(add-auto-mode 'clojure-mode "\\.cljs\\'")

(provide 'init-clojure)
