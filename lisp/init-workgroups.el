(require-package 'workgroups2)
(require 'workgroups2)

(setq wg-prefix-key (kbd "C-c w"))
(setq wg-session-file "~/.emacs.d/workgroups/mine")

;; Easily switch between workgroups
(global-set-key (kbd "C-c C-0") 'wg-switch-to-workgroup-at-index-0)
(global-set-key (kbd "C-c C-1") 'wg-switch-to-workgroup-at-index-1)
(global-set-key (kbd "C-c C-2") 'wg-switch-to-workgroup-at-index-2)
(global-set-key (kbd "C-c C-3") 'wg-switch-to-workgroup-at-index-3)
(global-set-key (kbd "C-c C-4") 'wg-switch-to-workgroup-at-index-4)
(global-set-key (kbd "C-c C-5") 'wg-switch-to-workgroup-at-index-5)
(global-set-key (kbd "C-c C-6") 'wg-switch-to-workgroup-at-index-6)
(global-set-key (kbd "C-c C-7") 'wg-switch-to-workgroup-at-index-7)
(global-set-key (kbd "C-c C-8") 'wg-switch-to-workgroup-at-index-8)
(global-set-key (kbd "C-c C-9") 'wg-switch-to-workgroup-at-index-9)

(workgroups-mode 1)
;; save workgroup every 5 minutes
(defun save-workgroup-session ()
  (when (memq 'workgroups-mode minor-mode-list)
    (message "Saving workgroup session...")
    (wg-save-session)))
(after-load 'workgroups-mode
  (run-at-time "5 min" 300 'save-workgroup-session))

(provide 'init-workgroups)
