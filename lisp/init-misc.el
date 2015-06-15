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

;; modify highlight-symbol
;; http://emacs.stackexchange.com/questions/931
(defun highlight-symbol-mode-post-command ()
  "After a command, change the temporary highlighting.
Remove the temporary symbol highlighting and, unless a timeout is specified,
create the new one."
  (if (eq this-command 'highlight-symbol-jump)
      (when highlight-symbol-on-navigation-p
        (highlight-symbol-temp-highlight))
    (highlight-symbol-update-timer highlight-symbol-idle-delay)))

(defun highlight-symbol-update-timer (value)
  (when highlight-symbol-timer
    (cancel-timer highlight-symbol-timer))
  (setq highlight-symbol-timer
        (run-with-timer value nil 'highlight-symbol-temp-highlight)))

(setq highlight-symbol-idle-delay .1)
;; end highlight-symbol

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

(setq scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)

;; automatically create missing parent directories when visiting a new file
(defun my-create-non-existent-directory ()
      (let ((parent-directory (file-name-directory buffer-file-name)))
        (when (and (not (file-exists-p parent-directory))
                   (y-or-n-p (format "Directory `%s' does not exist! Create it?" parent-directory)))
          (make-directory parent-directory t))))
(add-to-list 'find-file-not-found-functions #'my-create-non-existent-directory)


(provide 'init-misc)
