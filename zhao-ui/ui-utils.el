;;; ui-utils.el --

(use-package goggles :hook ((prog-mode text-mode) . goggles-mode))


(use-package indent-bars
  :hook prog-mode
  :custom
  (indent-bars-prefer-character t) ;no needed after emacs-30 for windows.
  (indent-bars-treesit-support t)
  (indent-bars-no-descend-lists t))


(use-package yascroll :hook (after-init . global-yascroll-bar-mode))

;; (use-package breadcrumb :hook after-init)


;; (use-package minions :hook after-init)


(provide 'ui-utils)
;;; ui-utils.el ends here
