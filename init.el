;; Getting Started with Zhao's ~/.emacs

;; (add-to-list 'load-path (expand-file-name (concat user-emacs-directory "rc")))
(add-to-list 'load-path (locate-user-emacs-file "rc"))
(require 'rc-use-package)		; Use Package
(require 'rc-basic)
(require 'rc-setup-font)		; Our Major Character
(require 'rc-keybind)			; Sensible Binding
(require 'rc-no-littering)
(require 'rc-completion)    ; Improved `M-x' && Editing Environment
(require 'rc-languages)	    ; Mode or LSP
(add-to-list 'load-path (locate-user-emacs-file "ui"))
(require 'ui-theme)	    ; Load theme
(require 'ui-tab-line)	    ; Customized tab bar/line
(add-to-list 'load-path (locate-user-emacs-file "myhack"))
(require 'myhack-calendar)	    ; Improved Calendar for Tradtional Chinese
(require 'myhack-undo-fu)	    ; Slighy Advance/Modern Undo System
(require 'myhack-org)


(use-package magit
  :bind
  ("C-x g" . magit-status))

(use-package indent-bars
  :hook prog-mode
  :custom
  (indent-bars-prefer-character t) ;no needed after emacs-30 for windows.
  (indent-bars-treesit-support t)
  (indent-bars-no-descend-lists t))

(use-package yascroll :hook (after-init . global-yascroll-bar-mode))

(use-package minions :hook after-init)
