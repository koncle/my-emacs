;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/D:\emacs\.emacs.d\elpa\jdee-20170325.422"))

;; (setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
;;                                   global-semanticdb-minor-mode
;;                                   global-semantic-idle-summary-mode
;;                                   global-semantic-stickyfunc-mode
;;                                   global-semantic-mru-bookmark-mode))

;; (setq semantic-load-turn-everything-on t)
;; (semantic-mode 1)
;; (require 'semantic)
;; (require 'semantic/senator)
;; (require 'semantic/ia)
;; (require 'semantic/wisent)
;; (require 'semantic/wisent/java-tags)

;; (setq jde-auto-parse-enable nil)
;; (setq jde-enable-senator nil)

;; (require 'jdee)

;; (setq jde-ant-enable-find t
;;       jde-build-function 'jde-ant-build
;;       jde-ant-args "compile")

;; (add-to-list 'auto-mode-alist '("\\.java\\'" . jdee-mode))

;; ;(push 'jde-mode ac-modes)

;; (setq  jde-jdk '("1.8")
;;        jde-jdk-registry '(("1.8" . "C:\Program Files\Java\jdk1.8.0_102")))

;; (define-key jdee-mode-map (kbd "<f9>") 'jdee-build)
;; (define-key jdee-mode-map (kbd "<f10>") 'jdee-run)
;; (define-key jdee-mode-map (kbd "C-'") 'jdee-complete)
;; (defun java-hooks ()
;;   (menu-bar-mode 1)
;;   (wisent-java-default-setup)
;;   (setq c-basic-offset 4)
;;   (setq fill-column 90)
;;   (setq whitespace-line-column 90)
;;   (jdee-abbrev-mode))

;; (add-hook 'jde-mode-hook 'java-hooks)
;; (add-hook 'java-mode-hook 'java-hooks)

(provide 'init-java)
