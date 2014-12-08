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

;; font
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 120)

;; theme
(require-package 'flatui-theme)
(require 'flatui-theme)

(provide 'init-gui)
