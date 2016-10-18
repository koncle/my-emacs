;; 编译快捷键
(defun q-c()
  "快速gcc编译"
  (interactive)
  (compile (concat "g++" (buffer-name (current-buffer)) " -g -pg")))

(add-hook 'c++-mode-hook
	  (lambda ()
		 (unless (file-exists-p "Makefile")
		   (set (make-local-variable 'compile-command)
			(let ((file (file-name-nondirectory buffer-file-name)))
			(concat "g++ -g -o2 -Wall -o "
				(file-name-sans-extension file)
				" " file))))))

(add-hook 'c-mode-hook
	  (lambda ()
		 (unless (file-exists-p "Makefile")
		   (set (make-local-variable 'compile-command)
			(let ((file (file-name-nondirectory buffer-file-name)))
			(concat "g++ -g -o2 -Wall -o "
				(file-name-sans-extension file)
				" " file))))))


;; (file-exists-p "Makefile")
;;(add-hook 'c-mode-hook 'kbd-quick-c)

(provide 'init-c++)
