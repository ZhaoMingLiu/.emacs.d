;;; hacks-undo-fu.el --- Modern Undo System

(use-package undo-fu-session
  :config
  (setq undo-fu-session-compression
	(when (eq system-type 'windows-nt) 'zst))
  (undo-fu-session-global-mode t))

(use-package undo-fu
  :bind (("C-z" . nil)
         ("C-z" . undo-fu-only-undo)
         ("C-S-z" . undo-fu-only-redo))
  :init
  (setq undo-fu-allow-undo-in-region t
	undo-fu-ignore-keyboard-quit t))


(provide 'hacks-undo-fu)
;;; hacks-undo-fu.el ends here
