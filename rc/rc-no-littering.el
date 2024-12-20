;;; rc-no-littering.el ---

(use-package no-littering
  :init
  (setq no-littering-etc-directory
        (expand-file-name "config/" user-emacs-directory)

        no-littering-var-directory
        (expand-file-name "data/" user-emacs-directory))


  (require 'recentf)

  (add-to-list 'recentf-exclude
               (recentf-expand-file-name no-littering-var-directory))

  (add-to-list 'recentf-exclude
               (recentf-expand-file-name no-littering-etc-directory))


  (setq
   auto-save-file-name-transforms
   `((".*" ,(no-littering-expand-var-file-name "auto-save/") t))

   custom-file
   (expand-file-name "custom.el" user-emacs-directory))

  (no-littering-theme-backups))


(provide 'rc-no-littering)
;;; rc-no-littering.el ends here
