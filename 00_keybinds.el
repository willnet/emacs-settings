;; バックスペース
(define-key global-map "\C-h" 'delete-backward-char)

;; ヘルプ
(define-key global-map (kbd "C-x ?") 'help-command)

;; インクリメンタル時のバックスペース
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)

;; コマンドキーをMetaキーとして利用
(setq ns-command-modifier (quote meta))

;; altキーをSuperキーとして利用
(setq ns-alternate-modifier (quote super))

;; C-x oの逆をC-x pに割り当てる
(global-set-key (kbd "C-x p") (lambda () (interactive) (other-window -1)))

;; フルスクリーン
(define-key global-map (kbd "C-x m") 'ns-toggle-fullscreen)

;; ウィンドウを移る
(define-key global-map (kbd "C-o") 'other-window)

;; rgrep
(define-key global-map (kbd "C-c r") 'rgrep)

;; anything-rurema
(define-key global-map (kbd "C-c a") 'anything-rurima)

;; anything-rurema-at-point
;;(define-key global-map (kbd "C-c a r") 'anything-rurima-at-point)

