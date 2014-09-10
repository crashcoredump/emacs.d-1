(require-package 'smart-mode-line)
(require 'smart-mode-line)

(which-function-mode)

;;; smart-mode-line
(sml/setup)

(setq sml/name-width 20)
(setq sml/mode-width 10)
(add-to-list 'sml/hidden-modes " GG")
(add-to-list 'sml/hidden-modes " wg")
(add-to-list 'sml/hidden-modes " ElDoc")
(add-to-list 'sml/hidden-modes " AC")
(add-to-list 'sml/hidden-modes " WSC")
(add-to-list 'sml/hidden-modes " Outl")
(add-to-list 'sml/hidden-modes " hs")
(add-to-list 'sml/hidden-modes " Midje")
(add-to-list 'sml/hidden-modes " cider")
(add-to-list 'sml/hidden-modes " Par")

(add-to-list 'sml/replacer-regexp-list '("^~/Projects/" ":PRJ:"))

;;;
(add-hook 'emacs-lisp-mode-hook
  (lambda()
    (setq mode-name "el")))
(add-hook 'python-mode-hook
  (lambda()
    (setq mode-name "py")))
(add-hook 'clojure-mode-hook
  (lambda()
    (setq mode-name "clj")))
(add-hook 'erlang-mode-hook
  (lambda()
    (setq mode-name "erl")))

(provide 'init-mode-line)
