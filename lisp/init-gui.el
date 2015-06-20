(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)
(setq inhibit-splash-screen t)

;; set title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

(setq-default indicate-empty-lines t)

;; fill-column-indicator
(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
(setq fci-rule-color "orange")
(setq fci-rule-column 80)
(add-hook 'python-mode-hook 'fci-mode)
(add-hook 'js2-mode-hook 'fci-mode)
(add-hook 'clojure-mode-hook 'fci-mode)
(add-hook 'erlang-mode-hook 'fci-mode)

;; indent-guide
(require-package 'indent-guide)
(require 'indent-guide)
(add-hook 'python-mode-hook 'indent-guide-mode)
(add-hook 'web-mode-hook 'indent-guide-mode)
(setq indent-guide-recursive nil)

;; yascroll
(require-package 'yascroll)
(require 'yascroll)
(global-yascroll-bar-mode 1)
(setq yascroll:delay-to-hide nil)

;; scroll-restore
(require-package 'scroll-restore)
(require 'scroll-restore)
(scroll-restore-mode 1)
;; Allow scroll-restore to modify the cursor face
(setq scroll-restore-handle-cursor t)
;; Make the cursor invisible while POINT is off-screen
(setq scroll-restore-cursor-type nil)
;; Jump back to the original cursor position after scrolling
(setq scroll-restore-jump-back t)
;; Toggle scroll-restore-mode with the Scroll Lock key
(global-set-key (kbd "<Scroll_Lock>") 'scroll-restore-mode)

;; font
(set-frame-font (font-spec
                 :family "Ubuntu Mono"
                 :size 14))

;; theme
(require-package 'plan9-theme)
(require 'plan9-theme)
(load-theme 'plan9 t)
;; (require-package 'leuven-theme)
;; (load-theme 'leuven t)

(provide 'init-gui)
