;;; ui-utils.el --

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
      parenthesized_expression subscript)))
  (indent-bars-treesit-ignore-blank-lines-types '("module"))
  :config
  (defun my/treesit-parser-for-lang-mode (lang-mode-symbol)
    (when (and (treesit-available-p)
               (treesit-language-available-p lang-mode-symbol))
      (treesit-parser-create lang-mode-symbol)))

  (setq					;Zebra
   indent-bars-color '(highlight :face-bg t :blend 0.25)
   indent-bars-pattern ". .. .  "
   indent-bars-zigzag nil
   indent-bars-width-frac 0.4
   indent-bars-pad-frac 0.1
   indent-bars-color-by-depth '(:palette ("black" "white") :blend 0.65)
   indent-bars-highlight-current-depth '(:color "red" :blend 0.15)))


(use-package yascroll :hook (after-init . global-yascroll-bar-mode))

;; (use-package breadcrumb :hook after-init)


;; (use-package minions :hook after-init)


(use-package doom-modeline :hook after-init)


(provide 'ui-utils)
;;; ui-utils.el ends here
