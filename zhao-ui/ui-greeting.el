;;; ui-greeting.el -- Welcome~~

(use-package enlight
  :custom
  (enlight-content
   (concat
    (propertize (concat "Hello, " (user-login-name)) 'face 'highlight)
    "\n\n\n"
    (enlight-menu
     '(("Recents"
	("open last closed" recentf-open-most-recent-file "r")
	("list recently opened" recentf-open "l"))
       ("Find..."
	("users" (dired "~/../../") "h")
	(".emacs.d" (dired "~/.emacs.d") "e")
	("downloads" (dired "~/../../Downloads") "d"))
       ("Switch..."
	("init.el" (find-file (expand-file-name user-init-file)) "i"))
       ("\n\nType q for scratch-buffer")))))
  :config
  (setopt initial-buffer-choice #'enlight))


(provide 'ui-greeting)
;;; ui-greeting.el ends here
