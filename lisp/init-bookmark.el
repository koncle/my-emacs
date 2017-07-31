(dolist (buffer (buffer-list))
  (switch-to-buffer buffer)
  (print(current-buffer))
  (bookmark-set)
)



(provide 'init-bookmark)
(bookmark-set "main.py")
