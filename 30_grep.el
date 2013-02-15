;; grep結果を編集
;; (install-elisp-from-emacswiki "grep-edit.el")
;; (require 'grep-edit)

;; (install-elisp "https://raw.github.com/mhayashi1120/Emacs-wgrep/master/wgrep.el")
(require 'wgrep)
(setq wgrep-enable-key "r")
(setq wgrep-auto-save-buffer t)


;; http://shibayu36.hatenablog.com/entry/2013/02/08/215719
(defun chomp (str)
  (replace-regexp-in-string "[\n\r]+$" "" str))

;;; git
(defun git-project-p ()
  (string=
   (chomp
    (shell-command-to-string "git rev-parse --is-inside-work-tree"))
   "true"))

(defun git-root-directory ()
  (cond ((git-project-p)
         (chomp
          (shell-command-to-string "git rev-parse --show-toplevel")))
        (t
         "")))

(defun git-grep (grep-dir command-args)
  (interactive
   (let ((root (concat (git-root-directory) "/")))
     (list
      (read-file-name
       "Directory for git grep: " root root t)
      (read-shell-command
            "Run git-grep (like this): "
            (format "PAGER='' git grep -I -n -i -e %s"
                    "")
            'git-grep-history))))
  (let ((grep-use-null-device nil)
        (command
         (format (concat
                  "cd %s && "
                  "%s")
                 grep-dir
                 command-args)))
    (grep command)))

;; ggrep
(define-key global-map (kbd "C-,") 'git-grep)

