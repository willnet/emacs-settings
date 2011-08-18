;; yasnippet
(require 'yasnippet)
(require 'anything-c-yasnippet)
(yas/initialize)
(yas/load-directory
 (expand-file-name "~/Dropbox/emacs-lisp/elisp/yasnippet/snippets"))
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))

(setq anything-c-yas-space-match-any-greedy t) ;スペース区切りで絞り込めるようにする デフォルトは nil
(global-set-key (kbd "C-x y") 'anything-c-yas-complete)