(require-package 'flx-ido)
(require 'flx-ido)

;; Use C-f during file selection to switch to regular find-file
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

;; Use smex to handle M-x
(require-package 'smex)
(global-set-key [remap execute-extended-command] 'smex)

(require-package 'idomenu)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)

;; ignore dired buffers from ido-switch-buffer
(defun ido-ignore-dired-buffers (name)
  (if (get-buffer name)
      (with-current-buffer name
        (derived-mode-p 'dired-mode))))
(add-to-list 'ido-ignore-buffers 'ido-ignore-dired-buffers)

(provide 'init-ido)
