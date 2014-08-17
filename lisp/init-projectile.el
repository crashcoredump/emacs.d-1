(require-package 'projectile)
(require-package 'flx)
(require 'projectile)
(require 'flx)

(projectile-global-mode)
(setq projectile-completion-system 'ido)
(setq projectile-enable-caching t)
(global-set-key (kbd "C-x p") 'projectile-find-file)

(provide 'init-projectile)
