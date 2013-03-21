;; https://github.com/mooz/js2-mode

(setq-default c-basic-offset 2)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
