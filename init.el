(add-to-list 'load-path (expand-file-name "lisp" "~/.emacs.d/"))
(add-to-list 'load-path (expand-file-name "lib" "~/.emacs.d/"))

(defconst *is-a-mac* (eq system-type 'darwin))

(when *is-a-mac*
  (require 'init-osx))

;; =============
;; General stuff
;; =============
(require 'init-melpa)

;; define utility functions
(require 'init-utils)

;; bindings that don't belong anywhere else
(require 'init-bindings)

;; needs to be before init-gui to properly set smart-mode-line colors
(require 'init-mode-line)

;; (g)ui stuff
(require 'init-gui)

;; improvements for ido
(require 'init-ido)

;; window management
(require 'init-windows)

;; improvements for isearch
(require 'init-isearch)

(require 'init-misc)

;; =======================
;; Language specific stuff
;; =======================
(require 'init-python)
(require 'init-yaml)
(require 'init-web-mode)
(require 'init-markdown)
(require 'init-ledger)
(require 'init-javascript)
(require 'init-lisp)
(require 'init-clojure)

;; ===================
;; Tools and Utilities
;; ===================
;; dired improvements
(require 'init-dired)

;; nicer naming of buffers for files with identical names
(require 'init-uniquify)

(require 'init-git)

;; on-the-fly linting
(require 'init-flycheck)

;; auto-complete library
(require 'init-company)

;; project navigation
(require 'init-projectile)

;; vim emulation
(require 'init-evil)

;; workgroups/sessions management
(require 'init-workgroups)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
