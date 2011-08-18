;; (install-elisp "http://www.emacswiki.org/emacs/download/redo+.el")
(when (require 'redo+ nil t)
  ;; global-map
  (global-set-key (kbd "C-'") 'redo))