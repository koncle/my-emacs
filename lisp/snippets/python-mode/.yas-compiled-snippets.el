;;; Compiled snippets and support files for `python-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
					 '(("setter" "def set${1:Attribute}(self, ${2:args}):\n	self.$2 = $2" "set" nil nil nil "c:/emacs/.emacs.d/lisp/snippets/python-mode/set" nil nil)
					   ("def" "def ${}(${}):\n	${pass}" "defineFunction" nil nil nil "c:/emacs/.emacs.d/lisp/snippets/python-mode/defineFunction" nil nil)
					   ("cla" "class ${}(${}):\n    def __init__(${self}):\n	    ${pass}\n" "defineClass" nil nil nil "c:/emacs/.emacs.d/lisp/snippets/python-mode/defineClass" nil nil)
					   ("com" "\"\"\"\n${}\n\"\"\"" "comment" nil nil nil "c:/emacs/.emacs.d/lisp/snippets/python-mode/comment" nil nil)))


;;; Do not edit! File generated at Thu Feb 16 21:51:23 2017
