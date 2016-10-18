;; emacs的一些基本设置

;; 关闭警告声
;; t 为发出可视警告
;; nil 为发出声音警报
(setq visible-bell t)

;; 警报声
;; (ding) 

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)   

;; 显示行号
;;(global-linum-mode 1)

;; 显示列号
(column-number-mode 1)

;; tab
(setq tab-width 4)


;; 显示时间
;; 详细参数见 ~format-time-string~
;; 不能以秒显示时间，因为 ~emacs~ 为了效率，
;; 不会反复计算每个窗口的 mode line 和 header line,
;; 只有在某些情况出现时才刷新它，比如说改变窗口配置，
;; 切换 buffer, 改变 buffer 大小等
(display-time-mode 1)
(setq display-time-format (format-time-string "%m/%d %a %H:%M"))

;; 设置屏幕滚动边界
;; 1.设置滚屏步数
;; 2.设置滚屏边缘行数
;; 3.设置当光标越过屏幕后，滚动 ~scroll-conservatively~ 行
;;   来将光标重置到中心，但若其值大于100，则将永远不重置到中心
;;   但是会滚屏至光标正好在 view 里，即 line - top_margin - bottom_margin 行内
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 101)

;; 设置最大行
(setq fill-column 80)

;; 关闭启动画面
(setq inhibit-startup-message -1)

;; 设置回答yes no 改为 y n
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件
(setq make-backup-files nil)

;; 设置字符集
(prefer-coding-system 'gbk)

;; 防止 ~shell~ 出现乱码
(ansi-color-for-comint-mode-on)

;; 高亮当前行
(global-hl-line-mode 1)

;; 全屏~
(toggle-frame-fullscreen)

;; F2打开初始文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f1>") 'open-init-file)

(provide 'init-frame)
