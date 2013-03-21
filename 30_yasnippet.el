;; yasnippet
(require 'yasnippet)
(require 'dropdown-list)
(yas-global-mode 1)
(setq yas-trigger-key "C-i")
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-ido-prompt
                             yas-completing-prompt))
