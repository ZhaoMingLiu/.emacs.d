;;; ui-utils.el --


(use-package rainbow-delimiters :hook prog-mode)

(use-package goggles :hook ((prog-mode text-mode) . goggles-mode))


(use-package indent-bars
  :hook ((prog-mode . indent-bars-mode)
	 (emacs-lisp-mode . (lambda () (my/treesit-parser-for-lang-mode 'elisp))))
  :custom
  (indent-bars-treesit-support t)
  (indent-bars-no-descend-lists t)
  (indent-bars-treesit-wrap
   '((elisp
      quote special_form function_definition)
     (c
      argument_list parameter_list init_declarator parenthesized_expression)
     (lua
      expression_list function_declaration if_statement
      elseif_statement else_statement while_statement for_statement
      repeat_statement comment)
     (python
      argument_list parameters
      list list_comprehension
      dictionary dictionary_comprehension
      parenthesized_expression subscript)
     (toml
      table array comment)
     (yaml
      block_mapping_pair comment)))
  (indent-bars-treesit-ignore-blank-lines-types '("module"))
  :init
  (defun my/treesit-parser-for-lang-mode (lang-mode-symbol)
    (when (and (treesit-available-p)
               (treesit-language-available-p lang-mode-symbol))
      (treesit-parser-create lang-mode-symbol))))


;; (use-package breadcrumb :hook after-init)


;; (use-package minions :hook after-init)


(use-package doom-modeline :hook after-init
  :init
  (setq doom-modeline-hud t
	doom-modeline-buffer-modification-icon nil))


;; (use-package moody
;;   :config
;;   (moody-replace-mode-line-front-space)
;;   (moody-replace-mode-line-buffer-identification)
;;   (moody-replace-vc-mode))


(provide 'ui-utils)
;;; ui-utils.el ends here
