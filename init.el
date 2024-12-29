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
(require 'ui-greeting)			; Let Emacs smile
(require 'ui-utils)
;; (require 'ui-tab-line)			; Customized tab bar/line

(add-to-list 'load-path (locate-user-emacs-file "zhao-hacks"))
(require 'hacks-calendar)   ; Improved Calendar for Tradtional Chinese
(require 'hacks-undo-fu)    ; Slighy Advance/Modern Undo System
(require 'hacks-org)


(use-package magit
  :bind
  ("C-x g" . magit-status))


;; (use-package iedit)

(use-package multiple-cursors
  :bind
  (("C-S-c C-S-j" . mc/edit-lines)
   ("C-S-c C-S-c" . mc/mark-all-like-this-dwim)
   ("C-S-c C-S-r" . set-rectangular-region-anchor)))
