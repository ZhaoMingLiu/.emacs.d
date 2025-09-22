;;; early-init.el --- -*- lexical-binding: t; -*-

(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t)

(setq inhibit-splash-screen t
      inhibit-startup-screen t
      inhibit-startup-echo-area-message user-login-name
      inhibit-startup-buffer-menu t)

;; fix frame display
(dolist (var '(default-frame-alist initial-frame-alist))
  (add-to-list var '(width . (text-pixels . 1000)))
  (add-to-list var '(height . (text-pixels . 820))))

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; minibuffer hack
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (set-window-scroll-bars
             (minibuffer-window frame) 0 nil 0 nil t)
            (set-window-fringes
             (minibuffer-window frame) 8 8 5 t)))


;; prevent flash
(set-face-attribute 'default nil :background "#000000" :foreground "#ffffff")
(set-face-attribute 'mode-line nil :background "#000000" :foreground "#ffffff" :box 'unspecified)


;;; early-init.el ends here
