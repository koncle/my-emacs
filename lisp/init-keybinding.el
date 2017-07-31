;; 快捷操作
(define-key global-map (kbd "C-'") 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode-pop-mark)
;; helm-mode 文件快速定位
;; (setq helm-mode t)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "M-x") 'helm-M-x)

(setq helm-mode t)

(global-set-key (kbd "C-h h") 'hippie-expand)

;; ORG key binding
;; 绑定日历
(global-set-key (kbd "C-c a") 'org-agenda)

;; 储存和插入链接
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)

;; 转接命令
(global-set-key (kbd "C-c C-w o") 'org-refile)

;; org-capture
(global-set-key (kbd "C-c c") 'org-capture)

(global-set-key (kbd "<f1>") 'find-init)
(global-set-key (kbd "<f2>") 'find-notes)
(global-set-key (kbd "C-c <f2>") 'find-gtd)

;; quick cammands
(global-set-key (kbd "M-x") 'smex)

;; 
(global-set-key (kbd "C-=") 'er/expand-region)

;; 
(global-set-key (kbd "C-;") 'iedit-mode)

(provide 'init-keybinding)
