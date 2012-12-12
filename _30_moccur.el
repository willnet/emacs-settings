;;; color-moccur.elの設定
(require 'color-moccur)
;; 複数の検索語や、特定のフェイスのみマッチ等の機能を有効にする
;; 詳細は http://www.bookshelf.jp/soft/meadow_50.html#SEC751
(setq moccur-split-word t)

;; migemoがrequireできる環境ならmigemoを使う
(when (require 'migemo nil t) ;第三引数がnon-nilだとloadできなかった場合にエラーではなくnilを返す
  (setq moccur-use-migemo t))

;; ;;; anything-c-moccurの設定
;; (require 'anything-c-moccur)
;; ;; カスタマイズ可能変数の設定(M-x customize-group anything-c-moccur でも設定可能)
;; (setq anything-c-moccur-anything-idle-delay 0.2 ;`anything-idle-delay'
;;       anything-c-moccur-higligt-info-line-flag t ; `anything-c-moccur-dmoccur'などのコマンドでバッファの情報をハイライトする
;;       anything-c-moccur-enable-auto-look-flag t ; 現在選択中の候補の位置を他のwindowに表示する
;;       anything-c-moccur-enable-initial-pattern t) ; `anything-c-moccur-occur-by-moccur'の起動時にポイントの位置の単語を初期パターンにする

;; ;;; キーバインドの割当(好みに合わせて設定してください)
;; (global-set-key (kbd "M-o") 'anything-c-moccur-occur-by-moccur) ;バッファ内検索
;; (global-set-key (kbd "C-M-o") 'anything-c-moccur-dmoccur) ;ディレクトリ
;; (add-hook 'dired-mode-hook ;dired
;;           '(lambda ()
;;              (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))

(require 'anything-config)
(defun anything-occur-x ()
(interactive)
(anything :sources 'anything-c-source-occur
:buffer "*anything occur*"
:candidate-number-limit nil))
(global-set-key (kbd "M-o") 'anything-occur-x)
(global-set-key (kbd "C-x C-z") 'anything-resume)

;; (install-elisp http://www.emacswiki.org/emacs/download/moccur-edit.el)
;; moccur 系のバッファ内で r を押すと編集モードに
(require 'moccur-edit)

