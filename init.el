;;;; Getting Started with Zhao's ~/.emacs

;;; RC
;; (add-to-list 'load-path (expand-file-name "zhao-rc" user-emacs-directory)) ;absolute path
(add-to-list 'load-path (locate-user-emacs-file "zhao-rc")) ;relative path
(require 'rc-use-package)
(require 'rc-no-littering)
(require 'rc-basic)
;; (require 'rc-setup-font)		; Our Major Character
(require 'rc-keybind)			; Sensible Binding
(require 'rc-completion)       ; My fancy setup for `M-x'
(require 'rc-languages)	       ; Mode, LSP and Treesitter

;;; UI
(add-to-list 'load-path (locate-user-emacs-file "zhao-ui"))
(require 'ui-theme)			; Load theme
;; (require 'ui-greeting)			; Let Emacs smile
(require 'ui-utils)
(require 'ui-tab-line)			; Customized tab bar/line

;;; Hacks
(add-to-list 'load-path (locate-user-emacs-file "zhao-hacks"))
(require 'hacks-calendar)   ; 漢化版日曆
(require 'hacks-undo-fu)    ; Advanced and Modernlized Undo System
(require 'hacks-org)
(require 'hacks-dired)
(require 'hacks-eshell)

;;; Fonts
(set-face-attribute 'default nil :family "AdwaitaMono Nerd Font Propo" :height 85)

(set-face-attribute 'variable-pitch nil :family "Iosevka NFP" :height 100)

(set-face-attribute 'fixed-pitch nil :family "Fira Code" :height 85)


;;; Custom
(use-package magit
  :bind
  ("C-x g" . magit-status))


(use-package scroll-on-jump
  :config
  (setq scroll-on-jump-smooth nil)
  (setq scroll-on-jump-curve 'smooth-out)

  (scroll-on-jump-advice-add forward-paragraph)
  (scroll-on-jump-advice-add backward-paragraph)
  (scroll-on-jump-advice-add undo)
  (scroll-on-jump-advice-add redo)
  (scroll-on-jump-advice-add jump-item)
  (scroll-on-jump-advice-add jump-forward)
  (scroll-on-jump-advice-add jump-backward)
  (scroll-on-jump-advice-add forward-paragraph)
  (scroll-on-jump-advice-add backward-paragraph)
  (scroll-on-jump-advice-add goto-mark)

  ;; Actions that themselves scroll.
  (scroll-on-jump-with-scroll-advice-add consult-goto-line)
  (scroll-on-jump-with-scroll-advice-add isearch-repeat-forward)
  (scroll-on-jump-with-scroll-advice-add isearch-repeat-backward)
  (scroll-on-jump-with-scroll-advice-add scroll-down)
  (scroll-on-jump-with-scroll-advice-add scroll-up)
  (scroll-on-jump-with-scroll-advice-add recenter-top-bottom))
