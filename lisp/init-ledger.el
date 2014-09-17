(require-package 'ledger-mode)
(require-package 'flycheck-ledger)

(defconst *ledger-journal-path* "~/Dropbox/ledger/john.ledger")

(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

(after-load 'flycheck
  (require 'flycheck-ledger))

(exec-path-from-shell-copy-env "LEDGER_FILE")

(add-hook 'ledger-mode-hook 'goto-address-prog-mode)

;; don't override the highlighting of each posted item
;; in a xact if it is cleared/pending
(setq ledger-fontify-xact-state-overrides nil)

(defun ledger-open-my-journal ()
  "Easy way to open my ledger journal"
  (interactive)
  (find-file *ledger-journal-path*))

(provide 'init-ledger)
