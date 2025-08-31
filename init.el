;; Getting Started with Zhao's ~/.emacs

;; (add-to-list 'load-path (expand-file-name "zhao-rc" user-emacs-directory)) ;absolute path
(add-to-list 'load-path (locate-user-emacs-file "zhao-rc")) ;relative path
(require 'rc-use-package)
(require 'rc-basic)
;; (require 'rc-setup-font)		; Our Major Character
(require 'rc-keybind)			; Sensible Binding
(require 'rc-completion)       ; My fancy setup for `M-x'
(require 'rc-languages)	       ; Mode, LSP and Treesitter
(require 'rc-no-littering)

(add-to-list 'load-path (locate-user-emacs-file "zhao-ui"))
(require 'ui-theme)			; Load theme
;; (require 'ui-greeting)			; Let Emacs smile
(require 'ui-utils)
(require 'ui-tab-line)			; Customized tab bar/line

(add-to-list 'load-path (locate-user-emacs-file "zhao-hacks"))
(require 'hacks-calendar)   ; 漢化版日曆
(require 'hacks-undo-fu)    ; Advanced and Modernlized Undo System
(require 'hacks-org)
(require 'hacks-dired)


(set-face-attribute 'default nil :family "AdwaitaMono Nerd Font Propo" :height 85)

(set-face-attribute 'variable-pitch nil :family "Iosevka NFP" :height 100)

(set-face-attribute 'fixed-pitch nil :family "Fira Code" :height 85)


(use-package magit
  :bind
  ("C-x g" . magit-status))

(use-package esh-mode
  :ensure nil
  :defer t
  :bind (("C-c e" . eshell)))
