;;; ui-tab-line.el --- Modern `tab-line' for Emacs.

(use-package tab-line
  :ensure nil
  :custom-face
  (tab-line-tab ((t :height 1.0
                    :weight medium)))

  (tab-line-tab-current ((t :weight bold
                            :overline unspecified
			    :underline unspecified
                            :inherit tab-line-tab)))

  (tab-line-tab-inactive ((t :inherit tab-line-tab)))

  (tab-line-tab-special ((t :slant unspecified)))

  (tab-line-tab-modified ((t :slant unspecified
			     :weight bold
			     :underline t
			     ;; :foreground ,(modus-themes-with-colors red-intense)
			     )))
  :hook after-init
  :config
  (setq tab-line-new-button-show nil
	tab-line-close-button-show nil)
  (global-tab-line-mode))


(use-package tab-line-nerd-icons :after tab-line :config (tab-line-nerd-icons-global-mode))


(provide 'ui-tab-line)
;;; ui-tab-line.el ends here
