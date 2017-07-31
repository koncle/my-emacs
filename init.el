(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/theme")

(require 'init-package)

;; 初始化基本设置
;; 包括emacs界面
(require 'init-ui)

;; 初始化 ~org~ 模式
(require 'init-org)

;; 初始化一些快捷操作
;; helm, ace-jump, window-numbering
(require 'init-quick-op)
;; auto complement
(require 'init-complement)
(require 'init-check)

;; different language
(require 'init-python)
(require 'init-c++)
(require 'init-web)
(require 'init-scheme)

;; editors settings like markdown and latex
(require 'init-editor)

;; global functions and keybindings
(require 'init-function)
(require 'init-keybinding)

(require 'init-custom)

;; op after init
(require 'after-init-op)

;; open recent files list
(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("808dcce7c5285915214f85090519493a42db6f34281bca84f6787958344a31ea" "ef7ffd138b6a14c7153c99e976f40ab99d91a7170beafe78bfdb97e546785805" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" default)))
 '(jdee-jdk (quote ("1.8.0")))
 '(jdee-jdk-registry
   (quote
    (("1.8.0" . "C:\\Program Files\\Java\\jdk1.8.0_102"))))
 '(jdee-server-dir "D:\\emacs\\.emacs.d\\jdee-server")
 '(org-agenda-files
   (quote
    ("~/GTD/tasks.org" "~/GTD/finished.org" "~/GTD/trash.org" "~/GTD/projects.org")))
 '(package-selected-packages
   (quote
    (eslint-fix autopair emmet-mode json-mode flymake-jslint require company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell expand-region iedit)))
 '(racket-racket-program "Racket"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
