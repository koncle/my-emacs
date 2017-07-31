(defconst preferred-javascript-indent-level 2)

;; ---------------------------------------------------------------
;;   JS
;; ---------------------------------------------------------------

(use-package js2-mode
  :defer t
  :mode "\\.js"
  :bind
  (:map js-mode-map
		("\M-/" . ac-js2-company)
		)
  :init
  (add-hook 'js2-mode-hook 'ac-js2-mode)
  :config
  (setq-default js2-basic-offset 2
				js2-bounce-indent-p nil))

;; auto fix error and warnings after save file
(use-package eslint-fix
  :init
  (add-hook 'js-mode-hook
            (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))

(use-package coffee-mode
  :defer t
  :mode "\\.coffee\\.erb\\'"
  :config
  (setq coffee-js-mode preferred-javascript-mode
        coffee-tab-width preferred-javascript-indent-level)
  )

;; live edit in emacs
;; TODO: use gulp instead of this package
(use-package skewer-mode
  :defer t
  :init
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode)
  )

;; refact js code
(use-package js2-refactor-mode
  :defer t
  :init
  (add-hook 'js2-mode-hook 'js2-refactor-mode)
  :config
  (js2r-add-keybindings-with-prefix "C-c C-m")
  )


;;------------------------------------------------------------------
;;  HTML
;;------------------------------------------------------------------
(use-package web-mode
  :defer t
  :mode "\\.html"
  
  :bind
  (:map web-mode-map
		("\C-co" . browse-cur-file)
		("RET" . newline-and-indent))
  
  :config
  (setq web-mode-markup-indent-offset 2) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)    ; web-mode, css in html file
  (setq web-mode-code-indent-offset 2)   ; web-mode, js code in html file
  
  (setq web-mode-enable-current-column-highlight t) ; highlight
  (setq web-mode-enable-current-element-highlight t)
  )

;;------------------------------------------------------
;;            CSS
;;------------------------------------------------------

;;; Colourise CSS colour literals
(use-package ranbow-mode
  :defer t
  :init
  (dolist (hook '(css-mode-hook html-mode-hook sass-mode-hook))
	(add-hook hook 'rainbow-mode))
  )

;; Embedding in html
;; alow multiple major mode??
(use-package mmm-mode
  :defer t
  
  :config
  (mmm-add-group
   'html-css
   '((css-cdata
	  :submode css-mode
	  :face mmm-code-submode-face
	  :front "<style[^>]*>[ \t\n]*\\(//\\)?<!\\[CDATA\\[[ \t]*\n?"
	  :back "[ \t]*\\(//\\)?]]>[ \t\n]*</style>"
	  :insert ((?j js-tag nil @ "<style type=\"text/css\">"
				   @ "\n" _ "\n" @ "</style>" @)))
	 (css
	  :submode css-mode
	  :face mmm-code-submode-face
	  :front "<style[^>]*>[ \t]*\n?"
	  :back "[ \t]*</style>"
	  :insert ((?j js-tag nil @ "<style type=\"text/css\">"
				   @ "\n" _ "\n" @ "</style>" @)))
	 (css-inline
	  :submode css-mode
	  :face mmm-code-submode-face
	  :front "style=\""
	  :back "\"")))
  
  (dolist (mode (list 'html-mode 'nxml-mode))
	(mmm-add-mode-ext-class mode "\\.r?html\\(\\.erb\\)?\\'" 'html-css))
  )

;;; SASS and SCSS
(use-package css-mode
  :defer t
  :config
  (setq css-indent-offset 2))

(use-package sass-mode
  :defer t
  )

(use-package scss-mode
  :defer t
  )

(setq-default scss-compile-at-save nil)

;; Use eldoc for syntax hints
(use-package css-eldoc
  :defer t
  :init
  (autoload 'turn-on-css-eldoc "css-eldoc")
  (add-hook 'css-mode-hook 'turn-on-css-eldoc)
  (add-hook 'scss-mode-hook 'turn-on-css-eldoc)
  )

;;-----------------------------------
;; Emmet mode to expand tags
;; a super useful tool for front end develepers
;;-----------------------------------
(use-package emmet-mode
  :defer t
  :init
  (add-hook 'css-mode-hook 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode)
  :config
  (setq-default emmet-move-cursor-between-quote t)
  )
(provide 'init-web)
