;; 使用tab自动补全
(setq tab-always-indent 'complete)

;; 全局自动补全
(add-hook 'after-init-hook 'global-company-mode)

;; 快速展开
(use-package yasnippet
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/lisp/snippets/"))
  
  :config
  (dolist (dir yas-snippet-dirs) (yas-load-directory dir))
  (yas-global-mode 1)
  )

;; hippie 帮助补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(provide 'init-complement)
