(require-package 'dired+)

(setq diredp-hide-details-initially-flag nil)

(after-load 'dired
  (require 'dired+)
  (require 'dired-subtree)
  (when (fboundp 'global-dired-hide-details-mode)
    (global-dired-hide-details-mode -1))
  (setq dired-recursive-deletes 'top)
  (bind-dired-subtree-keys)
  (define-key dired-mode-map [mouse-2] 'dired-find-file))

(defun bind-dired-subtree-keys ()
  (bind-keys :map dired-mode-map
           ("." . dired-up-directory)
           ("M-o" . dired-subtree-insert)
           ("M-c" . dired-subtree-remove)
           ("M-u" . dired-subtree-up)
           ("M-d" . dired-subtree-down)
           ("M-p" . dired-subtree-previous-sibling)
           ("M-n" . dired-subtree-next-sibling)
           ("M->" . dired-subtree-end)
           ("M-<" . dired-subtree-beginning)))

;; Open dired in current directory
(global-set-key (kbd "C-x C-d") '(lambda () (interactive) (dired ".")))

(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))

(provide 'init-dired)
