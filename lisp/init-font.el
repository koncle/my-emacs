(set-face-attribute
 'default nil :font "consolas 12")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Microsoft Yahei" :size 18)))
(provide 'init-font)
