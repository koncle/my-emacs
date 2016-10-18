;;(require 'auto-complete)
;;(ac-config-default)
;;(setq ac-auto-start 2)
;;(ac-set-trigger-key "TAB")
;;(setq tab-always-indent 'complete)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
