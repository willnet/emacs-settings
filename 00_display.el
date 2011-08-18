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


;; Ricty {{{2 (http://save.sys.t.u-tokyo.ac.jp/~yusa/fonts/ricty.html)
;; (set-face-attribute 'default nil
;;                     :family "Ricty"
;;                     :height 160)
;; (set-fontset-font
;;  nil 'japanese-jisx0208
;;  (font-spec :family "Ricty"))

(when (>= emacs-major-version 23)
 (set-face-attribute 'default nil
                     :family "monaco"
                     :height 120)
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0208
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0212
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'mule-unicode-0100-24ff
  '("monaco" . "iso10646-1"))
 ;; 半角カナの
 (set-fontset-font
  (frame-parameter nil 'font)
  'katakana-jisx0201
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (setq face-font-rescale-alist
       '(("^-apple-hiragino.*" . 1.2)
        (".*osaka-bold.*" . 1.2)
        (".*osaka-medium.*" . 1.2)
        (".*courier-bold-.*-mac-roman" . 1.0)
        (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
        (".*monaco-bold-.*-mac-roman" . 0.9)
        ("-cdac$" . 1.3))))

;;
;; color
;;

(if window-system (progn
  (set-background-color "black")
  (set-foreground-color "white")
  (set-cursor-color "yellow")
))
(set-frame-parameter nil 'alpha 80)

;; タブ, 全角スペースを表示する
(setq whitespace-style
      '(tabs space-mark))
(setq whitespace-space-regexp "\\( +\\|\u3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])))
(require 'whitespace)
(global-whitespace-mode 1)