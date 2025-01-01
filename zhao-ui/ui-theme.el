;;; ui-theme.el --- Happy Hacking

(use-package modus-themes
  :bind ("<f5>" . #'modus-themes-toggle)

  :custom-face
  (show-paren-match ((t :underline nil
                        :weight semibold)))
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
	  (overline-heading-3 border)))


  (setq modus-themes-to-toggle '(modus-operandi modus-vivendi-deuteranopia))


  (modus-themes-load-theme 'modus-operandi-tinted))


(use-package rainbow-delimiters :hook prog-mode)


(provide 'ui-theme)
;;; ui-theme.el ends here
