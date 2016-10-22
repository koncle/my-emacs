;; ace-jump-mode 快速跳转
(require 'ace-jump-mode)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; helm-mode 文件快速定位
;; (setq helm-mode t)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "M-x") 'helm-M-x)

;; 全局自动补全
(add-hook 'after-init-hook 'global-company-mode)

;; 窗口标号
(window-numbering-mode)


;; 快速补全
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/lisp/snippets/"))
(dolist (dir yas-snippet-dirs)
  (yas-load-directory dir))

(yas-global-mode 1)

(provide 'init-quick-op)
