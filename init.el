;; Getting Started with Zhao's ~/.emacs

;; (add-to-list 'load-path (expand-file-name (concat user-emacs-directory "rc")))
(add-to-list 'load-path (locate-user-emacs-file "zhao-rc"))
(require 'rc-use-package)		; Use Package
(require 'rc-basic)
(require 'rc-setup-font)		; Our Major Character
(require 'rc-keybind)			; Sensible Binding
(require 'rc-no-littering)
(require 'rc-completion)       ; Improved `M-x' && Editing Environment
(require 'rc-languages)	       ; Mode or LSP

(add-to-list 'load-path (locate-user-emacs-file "zhao-ui"))
(require 'ui-theme)			; Load theme
;; (require 'ui-tab-line)			; Customized tab bar/line

(add-to-list 'load-path (locate-user-emacs-file "zhao-hacks"))
(require 'hacks-calendar)  ; Improved Calendar for Tradtional Chinese
(require 'hacks-undo-fu)   ; Slighy Advance/Modern Undo System
(require 'hacks-org)


(use-package magit
  :bind
  ("C-x g" . magit-status))


(use-package enlight
  :custom
  (enlight-content
   (concat
    (propertize "MENU" 'face 'highlight)
    "\n"
    (enlight-menu
     '(("Recents"
	("open last closed" recentf-open-most-recent-file "r")
	("list recently opened" recentf-open "l"))
       ("Find..."
	("users" (dired "~/../../") "h")
	(".emacs.d" (dired "~/.emacs.d") "e")
	("downloads" (dired "~/../../Downloads") "d"))))))
  :config
  (setopt initial-buffer-choice #'enlight))

(use-package breadcrumb :hook after-init)
