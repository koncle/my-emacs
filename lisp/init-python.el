(elpy-enable)

;; (require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(elpy-use-ipython)

(defun find-py-file()
  (interactive)
  (find-file "D:/python程序"))
   
(provide 'init-python)
