;;; rc-languages.el ---

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  ;; (treesit-auto-add-to-auto-mode-alist 'all)
  (delete 'lua treesit-auto-langs)
  (global-treesit-auto-mode))


(use-package eglot
  :ensure nil
  :hook ((python-mode
	  python-ts-mode

	  lua-mode

	  sh-mode
	  bash-ts-mode) . eglot-ensure))


(use-package lua-mode
  :mode "\\.lua\\'"
  :config
  (setq lua-indent-nested-block-content-align nil)
  (setq lua-indent-close-paren-align nil)

  (defun lua-at-most-one-indent (old-function &rest arguments)
    (let ((old-res (apply old-function arguments)))
      (if (> old-res lua-indent-level) lua-indent-level old-res)))

  (advice-add #'lua-calculate-indentation-block-modifier
              :around #'lua-at-most-one-indent))


(provide 'rc-languages)
;;; rc-languages.el ends here
