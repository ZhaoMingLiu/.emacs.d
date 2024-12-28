;;; hacks-org.el ---

(use-package org
  :defer t
  :config
  (setq org-special-ctrl-a/e t)

  (setq org-startup-indented t
        org-hide-emphasis-markers t))

;; (use-package org-modern
;;   :hook ((org-mode . org-modern-mode)
;;          (org-agenda-finalize . org-modern-agenda))

;;   :custom-face
;;   (org-modern-label ((t :height 1.0
;;                         :weight semi-bold
;;                         :slant italic
;;                         :family "JetBrains Mono"
;;                         :inherit default)))

;;   (org-modern-symbol ((t :height 1.5
;;                          :family "JetBrains Mono"))))


(use-package pangu-spacing
  :hook text-mode
  :config
  ;; (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))
  (setq-local pangu-spacing-real-insert-separtor t))


;; (use-package visual-fill-column
;;   :hook ((org-mode)
;;          (Info-mode . visual-line-fill-column-mode))
;;   :custom (visual-fill-column-center-text t))


(provide 'hacks-org)
;;; hacks-org.el ends here
