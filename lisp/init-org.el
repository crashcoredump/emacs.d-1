(setq org-directory "~/orgfiles")

(setq org-todo-keywords
      '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))

(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat org-directory "/todo.org") "Other")
         "* TODO %?\n  %i\n  %a")
        ("n" "Note" entry (file+datetree (concat org-directory "/notes.org"))
         "* %?\nEntered on %U\n  %i\n  %a")))

(global-set-key (kbd "C-c C-o") 'org-capture)

(provide 'init-org)
