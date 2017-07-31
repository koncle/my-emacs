; (search key word with browser)
(defun baidu(string)
  (interactive "sKey:")
  (browse-url (concat "https://www.baidu.com/s?wd=" string)))

; with google
(defun google(string)
    (interactive "sKey:")
	(browse-url (concat "https://www.google.com.tw/#newwindow=1&safe=off&q=" string)))

(defun find-init()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )

(defun find-notes()
  (interactive)
  (find-file "~/Notes"))

(defun find-gtd()
  (interactive)
  (find-file "~/GTD/tasks.org"))

;; open current buffer
(defun browse-cur-file()
  (interactive)
  (browse-url buffer-file-name))

(provide 'init-function)
