;;
;; 文字コード設定
;;

;; (set-language-environment       "Japanese")
;; (require 'ucs-normalize)
;; (prefer-coding-system           'utf-8-hfs)
;; (setq file-name-coding-system 'utf-8-hfs)
;; (setq locale-coding-system 'utf-8-hfs)

(set-language-environment       "Japanese")
(prefer-coding-system           'utf-8-unix)
(setq                           default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system  'utf-8)
(set-terminal-coding-system     'utf-8)
(set-keyboard-coding-system     'utf-8)
(set-clipboard-coding-system    'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)