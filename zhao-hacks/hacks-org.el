;;; hacks-org.el ---

(use-package org
  :defer t
  :hook (org-mode . visual-line-mode)
  :config
  (setq org-special-ctrl-a/e t)

  (setq org-startup-indented t
        org-hide-emphasis-markers t))

(use-package pangu-spacing
  :hook text-mode
  :config
  ;; (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))
  (setq-local pangu-spacing-real-insert-separtor t))


(provide 'hacks-org)
;;; hacks-org.el ends here
