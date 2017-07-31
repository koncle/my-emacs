(use-package elpy-mode
  :defer t
  :init
  (add-hook 'python-mode-hook 'elpy-mode)
  :config
  (elpy-enable)
  (elpy-use-ipython)
  (setq python-indent-offset 4)
  )

(use-package py-autopep8
  :defer t
  :init
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
  )

(provide 'init-python)
