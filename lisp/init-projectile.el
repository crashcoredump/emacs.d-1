(require-package 'projectile)
(require-package 'flx)
(require 'projectile)
(require 'flx)

(projectile-global-mode)
(setq projectile-completion-system 'ido)
(setq projectile-enable-caching t)
(global-set-key (kbd "C-x p") 'projectile-find-file)

(require-package 'project-explorer)
(require 'project-explorer)
(global-set-key (kbd "<f3>") 'project-explorer-toggle)

(provide 'init-projectile)
