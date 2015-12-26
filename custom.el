(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "Magenta")
 '(custom-safe-themes
   (quote
    ("b032a112a42ba56d391e0f7bd9f87506336da267c35de3aa71d4df1ba6d6c751" "093af34e7baf84660c739950b515fb3700f5a5745deb516c9d1d7723a5d0c39f" "acca0c2fbc4cb3b9f19d976c3547cbb99691b5fd402788589162b367f0814b08" "eafda598b275a9d68cc1fbe1689925f503cab719ee16be23b10a9f2cc5872069" "36ebb89fccf616639902cbbade761ff8d7f8b6b4063db52d4de4d8338bd7a793" "96936d76f48be40d64721e6a069fedc2ed1adbab71f8447016277599ddd75313" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "0928c3609728401c5b12f7c9f4a34f57af680aecba23532f6d29a0f611f1af9d" "7ec2d1c73249c206cce9ebcadee61dc5469b566eea1fe095b78273c96f28c0ca" "6cb4352e7ddb143bc260f120dd340f963b59cf9574649a6e94b548a5c8451ae6" "7ed129216d3f801e57bff03b41e8c588a21929d9ec5b339f3f5780ee1217c26b" "a28f2be9e2c1de5e7c3dd84e0d45c4db07555405368ea218b2fbe21175938baa" default)))
 '(ledger-reports
   (quote
    (("bal" "ledger -f %(ledger-file) bal -X P --cleared")
     ("reg" "ledger -f %(ledger-file) reg")
     ("payee" "ledger -f %(ledger-file) reg @%(payee)")
     ("account" "ledger -f %(ledger-file) reg %(account)")
     ("weekly expenses" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --weekly -p 'this month' Expenses")
     ("monthly expenses total" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --monthly -p 'this year' Expenses --collapse")
     ("monthly expenses" "ledger -f %(ledger-file) reg --period-sort '(-amount)' --real --effective --monthly -p 'this year' Expenses"))))
 '(org-agenda-files (quote ("~/orgfiles/notes.org" "~/orgfiles/todo.org")))
 '(safe-local-variable-values
   (quote
    ((project-venv-name . "collabspot-cadence")
     (project-venv-name . "prospecthive")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
