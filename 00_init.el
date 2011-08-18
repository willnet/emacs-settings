;; auto-save
;; http://0xcc.net/misc/auto-save/auto-save-buffers.el
;; (require 'auto-save-buffers)
;; (run-with-idle-timer 5.0 t 'auto-save-buffers)

;; (require 'auto-save-buffers-enhanced)
;; (setq auto-save-buffers-enhanced-interval 1.0)
;; (auto-save-buffers-enhanced t)
;; (global-set-key "\C-xas" 'auto-save-buffers-enhanced-toggle-activity)


;; バックアップファイルを残さない
(setq make-backup-files nil)

;; Dropbox対策
;; http://d.hatena.ne.jp/naotoakiyama/20081124/1227538925
;; (setq global-auto-revert-mode t)

;; htmlの編集時に自動でエンコードを変更するのをオフに
(setq auto-coding-functions (remove 'sgml-html-meta-auto-coding-function auto-coding-functions))

;; PATHの追加
(dolist (dir (mapcar 'expand-file-name '("/usr/local/bin")))
  (setenv "PATH" (concat dir ":" (getenv "PATH")))
  (setq exec-path (append (list dir) exec-path)))

