(require-package 'magit)
(require-package 'git-blame)
(require-package 'git-commit-mode)
(require-package 'git-rebase-mode)
(require-package 'gitignore-mode)
(require-package 'gitconfig-mode)
(require-package 'git-messenger)

(setq-default
 magit-save-some-buffers nil
 magit-process-popup-time 10
 magit-diff-refine-hunk t
 magit-restore-window-configuration t
 magit-completing-read-function 'magit-ido-completing-read)

;; Hint: customize `magit-repo-dirs' so that you can use C-u M-F12 to
;; quickly open magit on any one of your projects.
(global-set-key (kbd "C-c C-m") 'magit-status)

(after-load 'magit
  (define-key magit-status-mode-map (kbd "C-M-<up>") 'magit-goto-parent-section))

(require-package 'fullframe)
(after-load 'magit
  (fullframe magit-status magit-mode-quit-window))

;;; git-gutter
(require-package 'git-gutter)
(require 'git-gutter)
(global-git-gutter-mode 1)
(setq git-gutter:modified-sign "* "
      git-gutter:added-sign "+ "
      git-gutter:deleted-sign "- ")
(setq git-gutter:lighter " GG")

(global-set-key (kbd "M-g M-p") 'git-gutter:previous-hunk)
(global-set-key (kbd "M-g M-n") 'git-gutter:next-hunk)

(provide 'init-git)
