(require-package 'ledger-mode)
(require-package 'flycheck-ledger)

(defconst *ledger-journal-path* "~/Dropbox/ledger/john.ledger")

(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

(after-load 'flycheck
  (require 'flycheck-ledger))

(exec-path-from-shell-copy-env "LEDGER_FILE")

(add-hook 'ledger-mode-hook 'goto-address-prog-mode)

(defun ledger-open-my-journal ()
  "Easy way to open my ledger journal"
  (interactive)
  (find-file *ledger-journal-path*))

(provide 'init-ledger)
