
;; use pp-eval-expression (same as eval-expression, but pretty-print's output)
(global-set-key (kbd "M-:") 'pp-eval-expression)

;; Highlight current sexp
(require-package 'hl-sexp)
;; Prevent flickery behaviour due to hl-sexp-mode unhighlighting before each command
(after-load 'hl-sexp
  (defadvice hl-sexp-mode (after unflicker (&optional turn-on) activate)
    (when turn-on
      (remove-hook 'pre-command-hook #'hl-sexp-unhighlight))))

(require-package 'paredit)
(require-package 'rainbow-delimiters)
(require-package 'highlight-parentheses)
(require 'derived)
(require 'paredit)
(require 'rainbow-delimiters)
(require 'highlight-parentheses)

(defun lisp-setup ()
  "Enable features useful in any Lisp mode."
  (rainbow-delimiters-mode t)
  ;; (hl-sexp-mode)
  (enable-paredit-mode)
  (turn-on-eldoc-mode)
  (highlight-parentheses-mode))

(defun emacs-lisp-setup ()
  "Enable features useful when working with *only* elisp."
  )

(defconst elispy-modes
  '(emacs-lisp-mode ielm-mode))

(defconst lispy-modes
  (append elispy-modes
          '(lisp-mode inferior-lisp-mode lisp-interaction-mode
                      clojure-mode))
  "All lispy major modes.")

(dolist (hook (mapcar #'derived-mode-hook-name lispy-modes))
  (add-hook hook 'lisp-setup))

(dolist (hook (mapcar #'derived-mode-hook-name elispy-modes))
  (add-hook hook 'emacs-lisp-setup))

(defun maybe-check-parens ()
  "Run `check-parens' if this is a lispy mode."
  (when (memq major-mode lispy-modes)
    (check-parens)))

(add-hook 'after-save-hook 'maybe-check-parens)

(provide 'init-lisp)
