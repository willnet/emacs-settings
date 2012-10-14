;; http://www.emacswiki.org/emacs/download/auto-install.el
(require 'auto-install)
;; インストールディレクトリの指定
(setq auto-install-directory "~/.emacs.d/auto-install/")
;; EmacsWiki に登録されている elisp の名前を取得する
(auto-install-update-emacswiki-package-name t)
;; install-elisp の関数を利用可能にする
(auto-install-compatibility-setup)
