(require-package 'json-mode)
(require-package 'js2-mode)

(after-load 'js2-mode
  (define-key js2-mode-map (kbd "TAB") 'indent-for-tab-command))

(defvar preferred-javascript-indent-level 2)

(after-load 'js2-mode
  (add-hook 'js2-mode-hook '(lambda () (setq mode-name "JS2"))))

(setq js2-use-font-lock-faces t
      js2-mode-must-byte-compile nil
      js2-basic-offset preferred-javascript-indent-level
      js2-indent-on-enter-key t
      js2-auto-indent-p t
      js2-bounce-indent-p nil)

(after-load 'js2-mode
  (js2-imenu-extras-setup))

(setq auto-mode-alist
      (cons '("\\.js\\'" . js2-mode) auto-mode-alist))

(provide 'init-javascript)
