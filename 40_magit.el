(require 'magit)
(require 'magit-blame)
(define-key magit-mode-map "\M-l" "l-all")
(define-key global-map (kbd "C-l b") 'magit-blame-mode)
