(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq anything-samewindow nil)
(push '("*anything*" :height 20) popwin:special-display-config)

(push '(dired-mode :position top) popwin:special-display-config)