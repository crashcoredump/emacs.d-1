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

(show-paren-mode 1)

;; highlight symbol on hover
(require-package 'highlight-symbol)
(dolist (hook '(prog-mode-hook html-mode-hook))
  (add-hook hook 'highlight-symbol-mode)
  (add-hook hook 'highlight-symbol-nav-mode))
(eval-after-load 'highlight-symbol
  '(diminish 'highlight-symbol-mode))

(setq highlight-symbol-idle-delay 0)

;; save place in buffer when revisiting a file
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/tmp/saved-places")

;; smooth-scrolling
(require-package 'smooth-scrolling)
(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)
(setq scroll-conservatively 9999
      scroll-preserve-screen-position t)

(provide 'init-misc)
