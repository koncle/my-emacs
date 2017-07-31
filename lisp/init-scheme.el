;; use racket
(use-package racket-mode
  :commands racket-mode
  :init
  (add-to-list 'exec-path "D:\\Racket\\")
  :config
  (progn
	(setq racket-racket-program "racket")
	(setq racket-raco-program "raco")
	(add-hook 'racket-mode-hook
			  (lambda ()
				(define-key racket-mode-map (kbd "C-x C-j") 'racket-run)))
	)
  )


;; 高亮lisp括号匹配
(show-paren-mode t)

;; 函数内高亮外层括号
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

(provide 'init-scheme)
