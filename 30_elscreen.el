;; ElScreen
;; apelに依存 http://cvs.m17n.org/elisp/APEL/
(setq elscreen-prefix-key "\C-t")
(require 'elscreen)
(elscreen-start)

(global-set-key [C-tab] 'elscreen-next)
(global-set-key [S-C-tab] 'elscreen-previous)
(global-set-key [S-C-iso-lefttab] 'elscreen-previous)
