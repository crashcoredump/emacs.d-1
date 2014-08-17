(require-package 'flycheck)

;; Override default flycheck triggers
(setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
      flycheck-idle-change-delay 0.8)
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-flycheck)
