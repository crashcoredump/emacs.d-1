(require-package 'web-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jinja2?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("jinja2"    . "\\.jinja2\\'")
        ("jinja2"    . "\\.html\\'")))

(provide 'init-web-mode)
