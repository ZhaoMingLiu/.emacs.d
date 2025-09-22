;;; hacks-eshell.el ---

(use-package esh-mode
  :ensure nil
  :defer t
  :bind (
	 ;; ("C-c e" . eshell)
	 :map eshell-mode-map
	 ("C-l" . my/esh-clear)
	 ;; ([remap eshell-list-history] . consult-history)
	 ("M-C-r" . consult-history))
  :config
  (defun my/esh-clear ()
    "thats a way to keep my eshell prompt"
    (interactive)
    (let ((inhibit-read-only t))
      (erase-buffer)
      (eshell-send-input))))


(use-package eshell-toggle
  :custom
  (eshell-toggle-size-fraction 3)
  (eshell-toggle-use-projectile-root 'project) ;; for in-built project.el
  ;; (eshell-toggle-run-command nil)
  :bind
  ("M-`" . eshell-toggle))


(provide 'hacks-eshell)
;;; hacks-eshell.el ends here
