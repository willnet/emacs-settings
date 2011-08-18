;; git clone git://github.com/m2ym/auto-complete.git
(require 'auto-complete)
(require 'auto-complete-config)    ; 必須ではないですが一応
(global-auto-complete-mode t)
(setq ac-dwim t)

(setq ac-auto-start nil) ; 自動的に開始しない
(define-key ac-mode-map (kbd "M-i") 'auto-complete)
;;(ac-set-trigger-key "\M-i") ; コンテキストに応じて補完
;;(global-set-key "\M-/" 'ac-start)

(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

