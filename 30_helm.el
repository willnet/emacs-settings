(require 'helm-config)
;; (helm-mode 1)

(global-set-key (kbd "C-;") 'helm-mini)
(global-set-key (kbd "C-:") 'helm-ls-git-ls)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x r b")   'helm-c-pp-bookmarks)

(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)
     ))
