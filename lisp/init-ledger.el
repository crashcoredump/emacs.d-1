(require-package 'ledger-mode)
(require-package 'flycheck-ledger)

(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

(after-load 'flycheck
  (require 'flycheck-ledger))

(exec-path-from-shell-copy-env "LEDGER_FILE")

(add-hook 'ledger-mode-hook 'goto-address-prog-mode)


(provide 'init-ledger)
