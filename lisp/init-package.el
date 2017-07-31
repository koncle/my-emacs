;;  初始化包
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives
	       '(("gnu" . "http://elpa.gnu.org/packages/")
		 ("popkit" . "http://elpa.popkit.org/packages/")
		 ("melpa" . "http://melpa.org/packages/")
		 ("melpa-stable" . "https://stable.melpa.org/packages/")
		 )
		   ))

;;common lisp extension
(require 'cl)

(defvar my/packages '(
                      ;; 包管理
					  use-package
					  easy-after-load

                      ;; evil
                      evil
                      evil-leader
                      evil-surround
                      evil-nerd-commenter
                      which-key
					  
					  ;; auto implemention
					  company
					  emmet-mode
					  autopair

					  ;; better editor
					  hungry-delete
					  swiper
					  counsel
					  smartparens

					  ;; front end major mode
					  ;; html
					  web-mode
					  tagedit
					  tidy

					  ;; js
					  js2-mode
					  json-mode
					  coffee-mode
					  skewer-mode
					  js2-refactor
                      eslint-fix

					  rainbow-delimiters
					  
					  ;; css
					  rainbow-mode
					  mmm-mode
					  sass-mode
					  scss-mode
					  less-css-mode
					  css-eldoc

					  ;; minor mode
					  nodejs-repl
					  exec-path-from-shell
                      
                      ;; python package
                      elpy
					  py-autopep8

					  ;; 扩展选中区域
					  expand-region

					  ;; 同时编辑多个区域
					  iedit

					  
					  ;; themes
					  ) "Default packages")

(setq package-selected-packages my/packages)

;; make sure all needed packages have been downloaded
(defun my/packages-installed-p ()
  (loop for pkg in package-selected-packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
	(when (not (package-installed-p pkg))
	  (package-install pkg))))

(provide 'init-package)
