;;; init.el --- Summary
;;; Evaluate emacs-lisp code blocks in init.org.
;;;
;;; Commentary:
;;; Copied from http://endlessparentheses.com/init-org-Without-org-mode.html
;;; See the blog post on why this is used instead of `org-babel-load-file'

;;; Code:

(defvar endless/init.org-message-depth 3
  "What depth of init.org headers to message at startup.")

(with-temp-buffer
  (insert-file-contents "~/.emacs.d/init.org")
  (goto-char (point-min))
  (search-forward "\n* init.org")  ;; Evaluate only sub-trees of "* init.org"
  (while (not (eobp))
    (forward-line 1)
    (cond
     ;; Report Headers
     ((looking-at
       (format "\\*\\{2,%s\\} +.*$"
               endless/init.org-message-depth))
      (message "%s" (match-string 0)))
     ;; Evaluate Code Blocks
     ((looking-at "^#\\+BEGIN_SRC +emacs-lisp *$")
      (let ((l (match-end 0)))
        (search-forward "\n#+END_SRC")
        (eval-region l (match-beginning 0))))
     ;; Finish on the next level-1 header
     ((looking-at "^\\* ")
      (goto-char (point-max))))))

;;; init.el ends here
