(require-package 'web-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jinja2?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("jinja2"    . "\\.jinja2\\'")
        ("jinja2"    . "\\.html\\'")))

(setq web-mode-markup-indent-offset 4
      web-mode-css-indent-offset 4
      web-mode-code-indent-offset 4
      web-mode-enable-auto-quoting nil)

(provide 'init-web-mode)
