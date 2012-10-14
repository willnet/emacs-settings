;; Interactively Do Things (highly recommended, but not strictly required)
;; (require 'ido)
;; (ido-mode t)

;; Rinari
(require 'rinari)
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))
(setq rinari-tags-file-name "TAGS")

(setf
 my-rinari-jump-schema
 '((my-stylesheet "y" ((t . "app/assets/stylesheets/.*")) nil)
   (my-javascript "j" ((t . "app/assets/javascripts/.*")) nil)
   (my-backbone-template "m" ((t . "app/assets/javascripts/templates/.*")) nil)
   (my-backbone-model "m" ((t . "app/assets/javascripts/backbone/models/.*")) nil)
   (my-backbone-view "m" ((t . "app/assets/javascripts/backbone/views/.*")) nil)
   (my-backbone-router "m" ((t . "app/assets/javascripts/backbone/routers/.*")) nil)

   (my-fabrication "f" ((t . "spec/fabricators/.*")) nil)
   (my-rspec
    "t"
    (("app/models/\\1.rb"                      . "spec/models/\\1_spec.rb")
     ("app/controllers/\\1.rb"                 . "spec/controllers/\\1_spec.rb")
     ("app/views/\\1\\..*"                     . "spec/views/\\1_spec.rb")
     ("lib/\\1.rb"                             . "spec/libs/\\1_spec.rb")
     ("db/migrate/.*_create_\\1.rb"            . "spec/models/\\1_spec.rb")
     ("config/routes.rb"                       . "spec/routing/.*\\.rb")
     (t                                        . "spec/.*\\.rb"))
    t)
   (my-decorator
    "d"
    (("app/models/\\1.rb"                      . "app/decorators/\\1_decorator.rb")
     ("app/controllers/\\1.rb"                 . "app/decorators/\\1_decorator.rb")
     ("app/views/\\1\\..*"                     . "app/decorators/\\1_decorator.rb")
     ("db/migrate/.*_create_\\1.rb"            . "app/decorators/\\1_decorator.rb")
     (t                                        . "app/decorators/.*\\.rb"))
    t)

   (my-request-rspec "r" ((t . "spec/requests/.*")) nil)
   ))

(add-to-list 'auto-mode-alist '("\\.text\\.erb$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.jst\\.eco$" . rhtml-mode))

(rinari-apply-jump-schema my-rinari-jump-schema)

(define-key rinari-minor-mode-map (kbd "C-c m") 'rinari-find-model)
(define-key rinari-minor-mode-map (kbd "C-c M") 'rinari-find-mailer)
(define-key rinari-minor-mode-map (kbd "C-c c") 'rinari-find-controller)
(define-key rinari-minor-mode-map (kbd "C-c o") 'rinari-find-configuration)
(define-key rinari-minor-mode-map (kbd "C-c a") 'rinari-find-application)
(define-key rinari-minor-mode-map (kbd "C-c e") 'rinari-find-environment)
(define-key rinari-minor-mode-map (kbd "C-c h") 'rinari-find-helper)
(define-key rinari-minor-mode-map (kbd "C-c v") 'rinari-find-view)
(define-key rinari-minor-mode-map (kbd "C-c i") 'rinari-find-migration)
(define-key rinari-minor-mode-map (kbd "C-c l") 'rinari-find-lib)
(define-key rinari-minor-mode-map (kbd "C-c r") 'rinari-find-my-request-rspec)
(define-key rinari-minor-mode-map (kbd "C-c t") 'rinari-find-my-rspec)
(define-key rinari-minor-mode-map (kbd "C-c f") 'rinari-find-my-fabrication)
(define-key rinari-minor-mode-map (kbd "C-c y") 'rinari-find-my-stylesheet)
(define-key rinari-minor-mode-map (kbd "C-c d") 'rinari-find-my-decorator)
(define-key rinari-minor-mode-map (kbd "C-c j") 'rinari-find-my-javascript)
(define-key rinari-minor-mode-map (kbd "C-c C-j m") 'rinari-find-my-backbone-model)
(define-key rinari-minor-mode-map (kbd "C-c C-j r") 'rinari-find-my-backbone-router)
(define-key rinari-minor-mode-map (kbd "C-c C-j v") 'rinari-find-my-backbone-view)
(define-key rinari-minor-mode-map (kbd "C-c C-j t") 'rinari-find-my-backbone-template)
(define-key rinari-minor-mode-map (kbd "C-c C-c x") 'rinari-extract-partial)
(define-key rinari-minor-mode-map (kbd "C-c C-c p") 'rinari-console)
(define-key rinari-minor-mode-map (kbd "C-c C-c w") 'rinari-web-server)
(define-key rinari-minor-mode-map (kbd "C-c C-c r") 'rinari-web-server-restart)

(define-key rinari-minor-mode-map (kbd "C-c C-c c") 'rinari-cap)

(defun my-find-gemfile ()
  (interactive)
  (find-file (concat (rinari-root) "Gemfile")))
(define-key rinari-minor-mode-map (kbd "C-c g") 'my-find-gemfile)
