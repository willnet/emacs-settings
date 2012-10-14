;; https://github.com/nex3/haml-mode/raw/master/haml-mode.el

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.haml\\.erb$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.hamlc$" . haml-mode))
