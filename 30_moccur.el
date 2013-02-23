;;; color-moccur.elの設定
(require 'color-moccur)
;; 複数の検索語や、特定のフェイスのみマッチ等の機能を有効にする
;; 詳細は http://www.bookshelf.jp/soft/meadow_50.html#SEC751
(setq moccur-split-word t)

;; migemoがrequireできる環境ならmigemoを使う
(when (require 'migemo nil t) ;第三引数がnon-nilだとloadできなかった場合にエラーではなくnilを返す
  (setq moccur-use-migemo t))

;; (install-elisp http://www.emacswiki.org/emacs/download/moccur-edit.el)
;; moccur 系のバッファ内で r を押すと編集モードに
(require 'moccur-edit)

