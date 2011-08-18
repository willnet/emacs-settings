;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

;; Rinari
(require 'rinari)
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))
(setq rinari-tags-file-name "TAGS")

(define-key rinari-minor-mode-map (kbd "C-c m") 'rinari-find-model)
(define-key rinari-minor-mode-map (kbd "C-c c") 'rinari-find-controller)
(define-key rinari-minor-mode-map (kbd "C-c o") 'rinari-find-configuration)
(define-key rinari-minor-mode-map (kbd "C-c e") 'rinari-find-environment)
(define-key rinari-minor-mode-map (kbd "C-c h") 'rinari-find-helper)
(define-key rinari-minor-mode-map (kbd "C-c v") 'rinari-find-view)
(define-key rinari-minor-mode-map (kbd "C-c i") 'rinari-find-migration)
(define-key rinari-minor-mode-map (kbd "C-c l") 'rinari-find-lib)
(define-key rinari-minor-mode-map (kbd "C-c y") 'rinari-find-styleseet)
(define-key rinari-minor-mode-map (kbd "C-c j") 'rinari-find-javascript)
(define-key rinari-minor-mode-map (kbd "C-c x") 'rinari-extract-partial)


