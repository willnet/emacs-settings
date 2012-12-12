;; grep結果を編集
;; (install-elisp-from-emacswiki "grep-edit.el")
;; (require 'grep-edit)

;; (install-elisp "https://raw.github.com/mhayashi1120/Emacs-wgrep/master/wgrep.el")
(require 'wgrep)
(setq wgrep-enable-key "r")
(setq wgrep-auto-save-buffer t)

(defun ggrep ()
  (interactive)
  (let ((grep-find-command "PAGER='' git grep -n --no-color "))
    (call-interactively 'grep-find)))
