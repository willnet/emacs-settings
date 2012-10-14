;; http://blog.iss.ms/2012/03/17/095152
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook   'highlight-indentation-current-column-mode)
(add-hook 'haml-mode-hook   'highlight-indentation-current-column-mode)
