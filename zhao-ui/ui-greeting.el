;;; ui-greeting.el -- Welcome~~

(defface enlight-yellow-bold
  '((t (:foreground "#cabf00" :bold t)))
  "Yellow bold face")

(defvar enlight-gnu
  (propertize "
   ,           , 
  /             \\ 
 ((__-^^-,-^^-__)) 
  `-_---' `---_-' 
   `--|o` 'o|--' 
      \\  `  / 
       ): :( 
       :o_o: 
        '-' 
" 'face 'enlight-yellow-bold))

(use-package enlight
  :custom
  (enlight-content
   (concat
    `(,@enlight-gnu)
    "\n"
    (propertize
     (concat " Hello,  " (user-login-name) " 🫰 ")
     ;; "尊貴的不都有智慧。
;; 壽高的不都能明白公平。
;; －－《舊·伯》32：9"
     'face '(highlight italic))
    "\n\n\n"
    (enlight-menu
     '(("🔄️ Recents"
	("open last closed" recentf-open-most-recent-file "r")
	("list recently opened" recentf-open "l"))
       ("📌 Find..."
	("home" (dired "~/../../") "h")
	(".emacs.d" (dired "~/.emacs.d") "e")
	("downloads" (dired "~/../../Downloads") "d"))
       ("📂 Switch..."
	("init.el" (find-file (expand-file-name user-init-file)) "i"))
       ))
    "\n\n"
    (propertize "type" 'face 'bold-italic)
    (propertize " q " 'face 'help-key-binding)
    (propertize "for " 'face 'bold-italic)
    (propertize "scratch-buffer" 'face '(bold match))
    " "))
  :config
  (setopt initial-buffer-choice #'enlight))


(provide 'ui-greeting)
;;; ui-greeting.el ends here
