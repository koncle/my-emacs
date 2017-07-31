;; emacs的一些基本设置

;; 关闭警告声
;; t 为发出可视警告
;; nil 为发出声音警报
(setq visible-bell t)

;; 警报声
;;(ding)

;; 设置鼠标为竖线
;;(setq-default cursor-type 'bar)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 显示行号
;;(linum-mode)
;; 全局显示行号
(global-linum-mode 1)

;; 显示列号
(column-number-mode 1)

;; 显示时间
;; 详细参数见 ~format-time-string~
;; 不能以秒显示时间，因为 ~emacs~ 为了效率，
;; 不会反复计算每个窗口的 mode line 和 header line,
;; 只有在某些情况出现时才刷新它，比如说改变窗口配置，
;; 切换 buffer, 改变 buffer 大小等
(setq display-time-format "%m/%d %a %H:%M:%S")
(setq display-time-interval 1)
(display-time-mode 1)

;; 设置屏幕滚动边界
;; 1.设置滚屏步数
;; 2.设置滚屏边缘行数
;; 3.设置当光标越过屏幕后，滚动 ~scroll-conservatively~ 行
;;   来将光标重置到中心，但若其值大于100，则将永远不重置到中心
;;   但是会滚屏至光标正好在 view 里，即 line - top_margin - bottom_margin 行内
(setq scroll-step 1
      scroll-margin 1
      scroll-conservatively 101)

;; 设置最大行
;(setq fill-column 80)

;; 关闭启动画面
(setq inhibit-startup-message -1)



;; 编辑配置
;; 设置回答yes no 改为 y n
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件
(setq make-backup-files nil)

;; 不生成自动保存文件
(setq auto-save-default t)

;; 设置字符集
(prefer-coding-system 'gbk)

;; 防止 ~shell~ 出现乱码
(ansi-color-for-comint-mode-on)

;; 高亮当前行
(global-hl-line-mode 1)


;; 去除unix系统换行符\r
(defun remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; 全屏~
(setq initial-frame-alist '((fullscreen . maximized)) )
(toggle-frame-fullscreen)

;; 鼠标自动移动到新打开的
(require 'popwin)
(popwin-mode -1)

;; 为每个buffer添加编号用, alt+number 快速切换
(setq window-numbering-mode t)

;; 默认缩进
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode t)

;; atom主题
(load-theme 'atom-one-dark t)

;; 英文字体
(set-face-attribute
 'default nil :font "Source Code Pro 11")

;; 中文字体
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Microsoft Yahei" :size 19)))


(provide 'init-ui)
