;; http://blog.iss.ms/2012/03/17/095152
(require 'highlight-indentation)
(setq highlight-indentation-offset 2)
(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
(add-hook 'ruby-mode-hook   'highlight-indentation-mode)
(add-hook 'haml-mode-hook   'highlight-indentation-mode)
(add-hook 'ruby-mode-hook   'highlight-indentation-current-column-mode)
(add-hook 'haml-mode-hook   'highlight-indentation-current-column-mode)
