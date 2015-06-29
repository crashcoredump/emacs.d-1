; this gets called by outline to deteremine the level. Just use the length of the whitespace

(defun py-outline-level ()
  (let (buffer-invisibility-spec)
    (save-excursion
      (skip-chars-forward "\t ")
      (current-column))))

; this get called after python mode is enabled
(defun my-python-hook ()
  ; outline uses this regexp to find headers. I match lines with no indent and indented "class"
  ; and "def" lines.
  (setq outline-regexp "[^ \t]\\|[ \t]*\\(def\\|class\\) ")
  ; enable our level computation
  (setq outline-level 'py-outline-level)
  ; do not use their \C-c@ prefix, too hard to type. Note this overides some python mode bindings
  ;;(setq outline-minor-mode-prefix "\C-c")
  ; turn on outline mode
  (outline-minor-mode t)
)


;; ========
;; Anaconda
;; ========
(require-package 'anaconda-mode)
(require-package 'company-anaconda)
(require 'company-anaconda)
(require 'anaconda-mode)

;; ==========
;; virtualenv
;; ==========
(require-package 'virtualenvwrapper)
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(if (getenv "WORKON_HOME")
  (setq venv-location (getenv "WORKON_HOME"))
  (message "WORKON_HOME env variable not set."))

;; Nose
(require-package 'nose)
(require 'nose)

(add-to-list 'company-backends 'company-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'my-python-hook)

(provide 'init-python)
