;; ediff の操作用小ウィンドウを新規 frame にしない
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(defun other-window-or-split ()
  (interactive)
  (if (one-window-p)
      (execute-kbd-macro (kbd "C-x 3")))
  (execute-kbd-macro (kbd "C-x o")))

;; ウィンドウを移る
(global-set-key (kbd "C-o") 'other-window-or-split)
