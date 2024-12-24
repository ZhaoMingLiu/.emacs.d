;;; myhack-undo-fu.el ---

(use-package undo-fu-session
  :hook after-init
  :config
  (setq undo-fu-session-compression 'zst)
  (undo-fu-session-global-mode))

(use-package undo-fu
  :bind (("C-z" . nil)
         ("C-z" . undo-fu-only-undo)
         ("C-S-z" . undo-fu-only-redo))
  :config
  (setq undo-fu-allow-undo-in-region t))


(provide 'myhack-undo-fu)
;;; myhack-undo-fu.el ends here
