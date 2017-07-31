(use-package flycheck
  :init
  (add-hook 'after-init-hook 'global-flycheck-mode)
  :config
  ;; use emacs xml
  (setq flycheck-xml-parser 'flycheck-parse-xml-region)
  
  ;;disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
				(append flycheck-disabled-checkers
						'(javascript-jshint)))
  
  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  (flycheck-add-mode 'html-tidy 'web-mode)
  )
(provide 'init-check)
