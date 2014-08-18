;; for stuff that doesn't fit anywhere else

(global-set-key (kbd "RET") 'newline-and-indent)

;; make '_' part of a word
(modify-syntax-entry  ?_ "w" (standard-syntax-table))

(setq-default
 tab-width 4
 make-backup-files nil
 indent-tabs-mode nil
 show-trailing-whitespace t
 visible-bell nil)

;; allow entering y/n for yes/no prompt
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-misc)
