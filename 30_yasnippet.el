;; yasnippet
(require 'yasnippet-config)
(require 'dropdown-list)
(yas/global-mode 1)
(call-interactively 'yas/reload-all) ;workaround
;; anything-complete.elを使っているなら yas/completing-prompt のみでもよい
(setq yas/prompt-functions
'(yas/dropdown-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))

(setq yas-trigger-key "C-i")
