;; anytning.el用のキーバインド設定
(require 'anything)
(require 'anything-config)

(define-key global-map (kbd "C-;") 'anything)
(define-key anything-map (kbd "C-v") 'anything-next-source)
(define-key anything-map (kbd "M-v") 'anything-previous-source)

;; キーバインドの説明をanythingで
;; (require 'descbinds-anything)
;; (descbinds-anything-install)

;; (require 'anything-project)
;; (global-set-key (kbd "C-c C-f") 'anything-project)

;; (ap:add-project
;;  :name 'rails
;;  :look-for '("Makefile.PL" "Build.PL")
;;  :include-regexp '("\\.pm$" "\\.t$" "\\.pl$" "\\.PL$")
;;  :exclude-regexp "/tmp" ; can be regexp or list of regexp
;;  )

;; ;; anything-rurima http://d.hatena.ne.jp/rubikitch/20091223/rurima
;; (require 'anything-rurima)
;; (setq anything-rurima-index-file "~/work/rurima/rubydoc/rurima.e")
;; (define-key global-map "\C-cr" 'anything-rurima)
;; ;; refe2x
;; (defun refe2x (kw)
;;   (interactive "sReFe2x: ")
;;   (with-current-buffer (get-buffer-create (concat "*refe2x:" kw "*"))
;;     (when (zerop (buffer-size))
;;       (call-process "refe2x" nil t t kw)
;;       (diff-mode))
;;     (setq minibuffer-scroll-window (get-buffer-window (current-buffer) t))
;;     (goto-char (point-min))
;;     (display-buffer (current-buffer))))
;; anything.elとの連携
;; (defun anything-c-source-static-escript (symbol desc filename &rest other-attrib)
;;   `((name . ,desc)
;;     (candidates . ,symbol)
;;     ,@other-attrib
;;     (init
;;      . (lambda ()
;;          (unless (and (boundp ',symbol) ,symbol)
;;            (with-current-buffer (find-file-noselect ,filename)
;;              (setq ,symbol (split-string (buffer-string) "\n" t))))))
;;     (action
;;      ("Eval it"
;;       . (lambda (cand)
;;           (with-temp-buffer
;;             (insert cand)
;;             (cd ,(file-name-directory filename))
;;             (backward-sexp 1)
;;             (eval (read (current-buffer)))))))))
;; (setq anything-c-source-refe2x
;;       (anything-c-source-static-escript
;;        'anything-c-refe2x-candidates "ReFe2x"
;;        "~/work/refm/bitclust/refe2x.e"
;;        '(delayed)
;;        '(requires-pattern . 3))) ;; 何文字入力したらrefe2xが候補に入るか

(setq anything-sources (list anything-c-source-buffers
                             anything-c-source-bookmarks
                             anything-c-source-recentf
                             anything-c-source-file-name-history
                             ))

(require 'anything-rurima)
(setq anything-rurima-index-file "~/Dropbox/emacs-lisp/rurima/rubydoc/rurima.e")


;; kill-ring http://www.flatz.jp/archives/category/blog/%E6%8A%80%E8%A1%93%E6%83%85%E5%A0%B1/emacs
;; kill-ring の最大値. デフォルトは 30.
(setq kill-ring-max 20)
;; anything で対象とするkill-ring の要素の長さの最小値.デフォルトは 10.
(setq anything-kill-ring-threshold 5)
(global-set-key "\M-y" 'anything-show-kill-ring)
