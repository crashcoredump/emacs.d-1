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

;; font
(set-frame-font (font-spec
                 :family "Ubuntu Mono"
                 :size 14))

;; theme
;;(require-package 'flatui-theme)
;;(require 'flatui-theme)
;; (load-theme 'plan9)
(require-package 'leuven-theme)
(load-theme 'leuven t)

(provide 'init-gui)
