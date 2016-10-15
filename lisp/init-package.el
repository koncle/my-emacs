(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") 1)
  (add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") 1)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") 1))

(provide 'init-package)
