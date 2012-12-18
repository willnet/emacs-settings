;; ediff の操作用小ウィンドウを新規 frame にしない
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(defun other-window-or-split ()
  (interactive)
  (if (one-window-p)
      (execute-kbd-macro (kbd "C-x 3")))
  (execute-kbd-macro (kbd "C-x o")))

;; ウィンドウを移る
(global-set-key (kbd "C-o") 'other-window-or-split)


(winner-mode 1)
(defun winner-dwim (arg)
  (interactive "P")
  (let ((func (if arg 'winner-redo 'winner-undo)))
    ;; funcで指定したコマンドを呼び出す
    (let (current-prefix-arg) (call-interactively func))
    ;; winner-dwimではなくてwinner-undo/winner-redoを実行したことにする
    (run-with-timer 0.01 nil 'set 'last-command func)))

(global-set-key (kbd "C-q") 'winner-dwim)
;; 元のC-qを別なキーに退避させる
(global-set-key (kbd "C-c q") 'quoted-insert)
