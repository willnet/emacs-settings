;; リージョン色づけ
(setq transient-mark-mode t)

;; インデントにタブを使用することを禁止
(setq-default indent-tabs-mode nil)

;; C-x 3 時に文字を折り返す
(setq truncate-partial-width-windows nil)

;; 起動時にスタートアップ画面を表示しない
(setq inhibit-startup-message t)

;; スクロールバーを非表示
(scroll-bar-mode 0)

;; 括弧を強調表示する
(show-paren-mode t)

;; カーソルを点滅させる
(blink-cursor-mode t)

;; メニューバーにファイルパスを表示
(setq frame-title-format
      (format "%%f"))

;; 行番号を表示
(global-linum-mode)
(setq linum-format "%4d ") ; 5 桁分の領域を確保して行番号のあとにスペースを入れる

;;
;; font
;;

(let* ((size 16)
       (asciifont "Ricty") ; ASCII fonts
       (jpfont "Ricty") ; Japanese fonts
       (h (* size 10))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)))
  (set-face-attribute 'default nil :family asciifont :height h)
  (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font nil 'katakana-jisx0201 jp-fontspec)
  (set-fontset-font nil '(#x0080 . #x024F) fontspec) 
  (set-fontset-font nil '(#x0370 . #x03FF) fontspec))

;;
;; color
;;

;; 文字の色を設定します。
(add-to-list 'default-frame-alist '(foreground-color . "white"))
;; 背景色を設定します。
(add-to-list 'default-frame-alist '(background-color . "black"))
;; カーソルの色を設定します。
(add-to-list 'default-frame-alist '(cursor-color . "yellow"))

(set-frame-parameter nil 'alpha 80)