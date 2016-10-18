;;  初始化包
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives
	       '(("gnu" . "http://elpa.gnu.org/packages/")
		 ("popkit" . "http://elpa.popkit.org/packages/")
		 ("melpa" . "http://melpa.org/packages/"))))

;;(defvar my-packages
;;  '(elpy
;;    flycheck
;;    color-theme
;;    py-autopep8
;;    ))

;;(dolist (p my-packages)
;;  (when (not (package-installed-p p))
;;  (package-install p)))
	 
(provide 'init-package)
