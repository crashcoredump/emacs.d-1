(require-package 'undo-tree)
(require-package 'bind-key)
(require 'undo-tree)
(require 'bind-key)

(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-Z") 'undo-tree-redo)

(provide 'init-bindings)
