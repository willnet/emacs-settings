(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-dwim t)

(setq ac-auto-start nil) ; 自動的に開始しない
(define-key ac-mode-map (kbd "M-i") 'auto-complete)
;;(ac-set-trigger-key "\M-i") ; コンテキストに応じて補完
;;(global-set-key "\M-/" 'ac-start)

;; (setq ac-use-menu-map t)
;; (define-key ac-menu-map "\C-n" 'ac-next)
;; (define-key ac-menu-map "\C-p" 'ac-previous)

(require 'auto-complete-etags)
