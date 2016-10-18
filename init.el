

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/theme")
(require 'init-package)

;; 初始化主题
(require 'init-theme)

;; 初始化基本设置
;; 包括emacs界面
(require 'init-frame)

;; 初始化字体
(require 'init-font)

;; 初始化 ~org~ 模式
(require 'init-org)

(require 'init-python)

(require 'init-company)

(require 'init-c++)

(add-hook 'after-init-hook 'global-flycheck-mode)

(defun Notes()
  (interactive)
  (find-file "~/Notes"))
(global-set-key (kbd "<f2>") 'Notes)

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (flycheck yasnippet elpy color-theme auto))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
