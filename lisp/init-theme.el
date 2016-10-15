;; Blackboard Colour Theme for Emacs.
;;
;; Defines a colour scheme resembling that of the original TextMate Blackboard colour theme.
;; To use add the following to your .emacs file (requires the color-theme package):
;;
;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/themes/color-theme-blackboard.el")
;;
;; And then (color-theme-blackboard) to activate it.
;;
;; MIT License Copyright (c) 2008 JD Huntington 
;; Credits due to the excellent TextMate Blackboard theme
;;
;; All patches welcome


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 '(package-selected-packages (quote (color-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 )

(require 'color-theme)
;; (load-file "~/.emacs.d/lisp/themes/color-theme-blackboard.el")
(load-file "~/.emacs.d/lisp/themes/color-theme-tangotango.el")
(color-theme-initialize)
;; (color-theme-blackboard)
(color-theme-tangotango)

(provide 'init-theme)
