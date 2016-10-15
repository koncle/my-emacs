
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

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

(package-initialize)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/theme")

;;  初始化包
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

(defun Notes()
  (interactive)
  (find-file "~/.emacs.d/Orgs/Notes"))
(global-set-key (kbd "<f2>") 'Notes)
