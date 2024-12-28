;;; rc-languages.el ---

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))


;; (use-package lsp-mode
;;   :init
;;   (setq lsp-keymap-prefix "C-c l")

;;   :config
;;   (defvar-local lsp-format-on-save t
;;     "Format `lsp-mode'-managed buffer before save.")

;;   (defun lsp-format-on-save ()
;;     "Format on save using LSP server."
;;     (if lsp-format-on-save
;;         (progn
;;           (add-hook 'before-save-hook #'lsp-format-buffer nil 'local))))

;;   (add-hook 'lsp-configure-hook #'lsp-format-on-save)

;;   :commands (lsp lsp-deferred)

;;   :hook ((c-mode
;;           c-ts-mode

;;           ;; sh-mode
;;           ;; bash-ts-mode

;;           js-mode
;;           js-ts-mode

;;           js-json-mode
;;           json-ts-mode) . lsp-deferred))


(use-package lua-mode
  :mode "\\.lua\\'")


(provide 'rc-languages)
;;; rc-languages.el ends here
