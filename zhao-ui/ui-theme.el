;;; ui-theme.el --- Happy Hacking

(use-package modus-themes
  :bind ("<f5>" . #'modus-themes-toggle)

  :custom-face
  ;; (show-paren-match ((t :underline nil
  ;;                       :weight semibold)))
  (region ((t :extend nil)))

  :config
  (setq modus-themes-bold-constructs t
        modus-themes-prompts '(ultrabold)
        modus-themes-mixed-fonts t
	modus-themes-variable-pitch-ui t
        modus-themes-completions
        '((selection . (semibold)))
	modus-themes-headings
        '((1 . (extrabold 1.5))
          (2 . (bold 1.2))
          (t . (rainbow 1.1))))


  (setq modus-operandi-palette-overrides
        `((cursor "#4C566A")

          (fg-prompt cyan-faint)
          (bg-prompt bg-cyan-nuanced)

          (bg-completion bg-inactive)

          ,@modus-themes-preset-overrides-cooler))

  (setq modus-vivendi-tinted-palette-overrides
        `((bg-hl-line bg-cyan-subtle)
          (cursor red-faint)

          ,@modus-themes-preset-overrides-warmer))

  (setq modus-themes-common-palette-overrides
        '((fg-region unspecified)
          (bg-region bg-lavender)

          (bg-completion-match-0 bg-blue-subtle)
          (bg-completion-match-1 bg-yellow-subtle)
          (bg-completion-match-2 bg-cyan-subtle)
          (bg-completion-match-3 bg-red-subtle)

          (border-mode-line-active bg-mode-line-active)
          (border-mode-line-inactive bg-mode-line-inactive)

	  (bg-heading-2 bg-yellow-nuanced)
	  (bg-heading-3 bg-cyan-nuanced)
	  (overline-heading-1 border)
          (overline-heading-2 border)
	  (overline-heading-3 border)

	  (bg-tab-bar bg-main)
          (bg-tab-current bg-cyan-intense)
          (bg-tab-other bg-inactive)

	  ;; (bg-paren-match unspecified)
	  ;; (fg-paren-match unspecified)
	  ))


  (defun my-modus-themes-custom-faces (&rest _)
    (modus-themes-with-colors
      (custom-set-faces
       ;; Add "padding" to the mode lines
       `(mode-line ((,c :box (:line-width 4 :color ,bg-mode-line-active)))))))

  (add-hook 'modus-themes-after-load-theme-hook #'my-modus-themes-custom-faces)
  (add-hook 'emacs-startup-hook #'my-modus-themes-custom-faces) ;prevent previous hook unworking caused by circadian package

  (setq modus-themes-to-toggle '(modus-operandi modus-vivendi-deuteranopia)))


(use-package solar
  :ensure nil
  :config
  (setq calendar-latitude   24.14	;taichung
        calendar-longitude 120.67))

(use-package circadian
  :after solar
  :hook (emacs-startup . circadian-setup)
  :config
  (setq circadian-themes '((:sunrise . modus-operandi)
                           (:sunset  . modus-vivendi-deuteranopia))))


(use-package rainbow-delimiters :hook prog-mode)


(provide 'ui-theme)
;;; ui-theme.el ends here
