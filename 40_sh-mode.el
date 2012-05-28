;; http://keramida.wordpress.com/2008/08/08/tweaking-shell-script-indentation-in-gnu-emacs/
(defun my-setup-sh-mode ()
  "My own personal preferences for `sh-mode'."
  (interactive)
  (setq sh-basic-offset 2
        sh-indentation 2))
(add-hook 'sh-mode-hook 'my-setup-sh-mode)