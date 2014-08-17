(require-package 'evil)
(require-package 'evil-surround)
(require-package 'evil-leader)
(require-package 'evil-matchit)
(require 'evil)
(require 'evil-surround)
(require 'evil-leader)
(require 'evil-matchit)

;; bind F12 to toggle evil-local-mode
(global-set-key (kbd "<f12>") 'evil-local-mode)

(evil-leader/set-leader ",")
(global-evil-leader-mode)

;; enable evil-local-mode in these modes
(defvar enable-evil-mode-hooks
  '(clojure-mode-hook
    python-mode-hook
    erlang-mode-hook
    emacs-lisp-mode-hook
    web-mode-hook
    css-mode-hook
    js2-mode-hook
    js-mode-hook
    html-mode-hook
    ledger-mode-hook
    yaml-mode-hook))
(mapc (lambda (hook)
        (add-hook hook 'evil-local-mode))
      enable-evil-mode-hooks)

(global-evil-surround-mode 1)
(global-evil-matchit-mode 1)

(define-key evil-normal-state-map (kbd "SPC") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "S-SPC") 'evil-scroll-up)

(provide 'init-evil)
