; (install-elisp "https://github.com/michaelklishin/cucumber.el/raw/master/feature-mode.el")
;; https://github.com/aslakhellesoy/gherkin/raw/master/lib/gherkin/i18n.yml
(setq feature-default-i18n-file "~/Dropbox/emacs-lisp/elisp/feature/i18n.yml")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(setq feature-default-language "ja")

