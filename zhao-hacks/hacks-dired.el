;;; hacks-dired.el ---
(use-package dired
  :ensure nil
  :defer t
  :custom
  ((insert-directory-program
    (when (eq system-type 'windows-nt) "ls.exe"))

   (ls-lisp-use-insert-directory-program
    (when (eq system-type 'windows-nt) t))

   (dired-listing-switches "-AlhGgL --group-directories-first")))

(use-package dired-collapse :hook dired-mode)

(use-package nerd-icons-dired :hook dired-mode)

(use-package diredfl :hook dired-mode)

(use-package dired-git-info :hook (dired-after-readin . dired-git-info-auto-enable))


(setq delete-by-moving-to-trash t)


(provide 'hacks-dired)
;;; hacks-dired.el ends here
