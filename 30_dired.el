;; dired で直接ファイルをリネーム
;; dired中に r でファイル名編集モード
;; C-c C-c または C-x C-s で反映
(require 'wdired)
(define-key dired-mode-map "r"
  'wdired-change-to-wdired-mode)
(require 'dired-x)

(add-hook 'dired-mode-hook
  (lambda ()
    (define-key dired-mode-map (kbd "C-o") 'other-window-or-split)
    (local-unset-key (kbd "C-t"))
    ))
