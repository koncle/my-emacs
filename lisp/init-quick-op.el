;;--------------------------------------------------
;;  EDIT OP
;;---------------------------------------------------
;; ace-jump-mode 快速跳转
(use-package ace-jump-mode
  :config
  (ace-jump-mode-enable-mark-sync)
  )

;; 一次删除所有空格，直到遇到非空格
(use-package hungry-delete
  :config
  (global-hungry-delete-mode)
  )

;; auto pair quotes or semicolon or bracks
(use-package autopair
  :defer t
  :init
  (add-hook 'css-mode-hook 'autopair-mode)
  (add-hook 'js-mode-hook 'autopair-mode)
  (add-hook 'web-mode-hook 'autopair-mode))

;; 对选择区域编辑时，删除其内容
(delete-selection-mode 1)

(setq-default indent-tabs-mode nil)

;;-------------------------------------------------
;; WINDOW,FILE OP
;;------------------------------------------------
  
;; 窗口标号
(window-numbering-mode)

;(put 'dired-find-alternate-file 'disabled nil)
(use-package dired-x)

;; ido快速查找文件
(ido-mode)

;; 简化 M-x
(use-package smex
  :config
  (smex-initialize)
  ;; type a space where insert a '-'
  (defadvice smex (around space-inserts-hyphen activate compile)
	(let ((ido-cannot-complete-command
		   `(lambda ()
			  (interactive)
			  (if (string= " " (this-command-keys))
				  (insert ?-)
				(funcall ,ido-cannot-complete-command)))))
	  ad-do-it))
  )

;; 开启最近文件模式
(use-package recentf
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-item 10)
  )

(provide 'init-quick-op)
