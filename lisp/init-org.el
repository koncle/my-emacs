;; 全 ~org~ 文本缩进
(setq org-startup-indented t)

;; 绑定日历
(global-set-key (kbd "C-c a") 'org-agenda)

;; 储存和插入链接
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)

;; agenda文件列表
(setq org-agenda-files
      '("~/GTD/tasks.org"
	"~/GTD/inbox.org"
	"~/GTD/finished.org"
	"~/GTD/trash.org"
	"~/GTD/projects.org"
	))

;; 转接命令
(global-set-key (kbd "C-c C-w") 'org-refile)

;; 转接标题级别
;; ("a.org" . (:level . 2))
;; ("b.org" . (:level . 1))
;; 表示调用　~org-refile~ 时，将当前子项转移到
;; a.org 的第二级标题下 或 b.org 的第一级标题下
(setq org-refile-targets
      '(("finished.org" . (:level . 3))
	("tasks.org" . (:level . 1))
	("trash.org" . (:level . 1))
	("inbox.org" . (:level . 1))
	("projects.org" . (:level . 2))
	))

;; 状态设置
;; ! 表示切换到该状态会记录时间戳
;; @ 表示切换到该状态会提供一个记录
(setq org-todo-keywords
      '((sequence "TODO(t!)" "NEXT(n@/!)" "Waiting(w@/!)"
		  "|" "ABORT(a@/!)" "DONE(d@/!)" )))

;; 标签设置
(setq org-tag-alist '(("作业" . ?t)
		      ("项目" . ?P)
		      ("编程" . ?p)
		      ("电影" . ?c)
		      ("读书" . ?r)
		      ("运动" . ?E)
		      ("笔记" . ?n)
		      ("Emacs" . ?e)
		      ("Java" . ?J)
		      ("Cpp" . ?c)
		      ("Python" . ?y)
		      ("Elisp" . ?l)
		      ("JavaScript" . ?j)
		      ("Html" . ?h)
		      ))
      

;; org-capture
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-default-notes-file
      '("~/GTD/tasks.org"
	"~/GTD/inbox.org"
	))

(setq org-capture-templates
      '(("t" "Tasks" entry (file+headline "~/GTD/tasks.org" "todo")
	 "\n** TODO %?\n开始:%T\nRef:%i\nDesciption:\nFrom:%a\n")
	("i" "Inbox" entry (file+headline "~/GTD/inbox.org" "Inbox")
	 "\n** %?\n创建:%T\nRef:%i\nDiscription:\nFrom:%a\n")))

(provide 'init-org)
