(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#ecf0f1" "#e74c3c" "#2ecc71" "#f1c40f" "#2492db" "#9b59b6" "#1abc9c" "#2c3e50"])
 '(beacon-color "Magenta")
 '(browse-url-generic-program "firefox")
 '(cider-cljs-lein-repl
   "(do (require 'weasel.repl.websocket) (cemerick.piggieback/cljs-repl (weasel.repl.websocket/repl-env :ip \"127.0.0.1\" :port 9001)))")
 '(custom-safe-themes
   (quote
    ("8f65fb2483d8fbf2a877bffddbf2b6ab22a9a4bb07e3eafcf6c96ff743f84ddf" "64c66a2ceef2221a4ccd7b08c791fd94b3c67de2a3bf2051f3792593b54be5fa" "ff52e9e329c5a66eae3570e3f17288d0a9f96403ce1ac7cbca5a193ebc500936" "32840b5ff3c59a31f0845602a26e9a47c27d48bfed86b4a09cdbaf3a25167cf4" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "0aa12caf6127772c1a38f7966de8258e7a0651fb6f7220d0bbb3a0232fba967f" "b032a112a42ba56d391e0f7bd9f87506336da267c35de3aa71d4df1ba6d6c751" "093af34e7baf84660c739950b515fb3700f5a5745deb516c9d1d7723a5d0c39f" "acca0c2fbc4cb3b9f19d976c3547cbb99691b5fd402788589162b367f0814b08" "eafda598b275a9d68cc1fbe1689925f503cab719ee16be23b10a9f2cc5872069" "36ebb89fccf616639902cbbade761ff8d7f8b6b4063db52d4de4d8338bd7a793" "96936d76f48be40d64721e6a069fedc2ed1adbab71f8447016277599ddd75313" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "0928c3609728401c5b12f7c9f4a34f57af680aecba23532f6d29a0f611f1af9d" "7ec2d1c73249c206cce9ebcadee61dc5469b566eea1fe095b78273c96f28c0ca" "6cb4352e7ddb143bc260f120dd340f963b59cf9574649a6e94b548a5c8451ae6" "7ed129216d3f801e57bff03b41e8c588a21929d9ec5b339f3f5780ee1217c26b" "a28f2be9e2c1de5e7c3dd84e0d45c4db07555405368ea218b2fbe21175938baa" default)))
 '(fci-rule-color "#f8fce8")
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(ledger-reports
   (quote
    (("bal" "ledger -f %(ledger-file) bal -X P --cleared")
     ("reg" "ledger -f %(ledger-file) reg")
     ("payee" "ledger -f %(ledger-file) reg @%(payee)")
     ("account" "ledger -f %(ledger-file) reg %(account)")
     ("weekly expenses" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --weekly -p 'this month' Expenses")
     ("monthly expenses total" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --monthly -p 'this year' Expenses --collapse")
     ("monthly expenses" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --monthly -p 'this year' Expenses")
     ("monthly budget" "ledger -f %(ledger-file) -p 'this month' --monthly register ^expenses --budget"))))
 '(org-agenda-files (quote ("~/orgfiles/todo.org" "~/orgfiles/notes.org")))
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:strike-through t)))))
 '(package-selected-packages
   (quote
    (company-jedi python-docstring highlight-indent-guides simple-mpc browse-at-remote dockerfile-mode evil-cleverparens yascroll yaml-mode window-number web-mode virtualenvwrapper tao-theme swiper smooth-scrolling smooth-scroll smex smart-mode-line scss-mode scroll-restore reveal-in-finder rainbow-delimiters racket-mode pyenv-mode psci project-explorer paren-face paredit ox-reveal org-journal org-bullets nose nlinum nameframe-projectile nameframe-perspective mu4e-alert material-theme markdown-mode magit link-hint leuven-theme ledger-mode json-rpc json-mode js2-mode jedi indent-guide idomenu ido-vertical-mode ido-ubiquitous htmlize hl-sexp highlight-symbol highlight-parentheses gitignore-mode gitconfig-mode git-messenger git-gutter git-blame ghc geiser fullframe flycheck-ledger flycheck-haskell flx-ido fill-column-indicator exec-path-from-shell evil-vimish-fold evil-surround evil-search-highlight-persist evil-nerd-commenter evil-matchit evil-leader evil-anzu elm-mode elixir-mode eink-theme dired+ diminish cyphejor company-restclient company-emoji company-anaconda cider buffer-move bind-key beacon ag ac-anaconda)))
 '(safe-local-variable-values
   (quote
    ((bug-reference-bug-regexp . "#\\(?2:[[:digit:]]+\\)")
     (checkdoc-package-keywords-flag)
     (project-venv-name . "collabspot_sync")
     (project-venv-name . "collabspot-cadence")
     (project-venv-name . "prospecthive"))))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
