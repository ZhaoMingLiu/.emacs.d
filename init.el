;; Getting Started with Zhao's ~/.emacs

;; (add-to-list 'load-path (expand-file-name (concat user-emacs-directory "rc")))
(add-to-list 'load-path (locate-user-emacs-file "rc"))
(require 'rc-basic)
(require 'rc-keybind)			; Sensible Binding
(require 'rc-use-package)		; Use Package
(require 'rc-no-littering)
(require 'rc-theme)	    ; Load theme
(require 'rc-tab-line)	    ; Customized tab bar/line
(require 'rc-calendar)	    ; Improved Calendar for Tradtional Chinese
(require 'rc-undo-fu)	    ; Slighy Advance/Modern Undo System
(require 'rc-completion)    ; Improved `M-x' && Editing Environment
(require 'rc-languages)	    ; Mode or LSP
(require 'rc-org)
(require 'rc-setup-font)		; Our Major Character


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
