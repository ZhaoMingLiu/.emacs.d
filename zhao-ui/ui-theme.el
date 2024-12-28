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
        modus-themes-mixed-fonts nil
	modus-themes-variable-pitch-ui nil
        modus-themes-completions
        '((selection . (semibold)))
	modus-themes-headings
        '((1 . (heavy 1.5))
          (2 . (semibold 1.2))
          (t . rainbow)))


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
        '(
          (fg-region unspecified)
          (bg-region bg-lavender)

          (bg-completion-match-0 bg-blue-subtle)
          (bg-completion-match-1 bg-yellow-subtle)
          (bg-completion-match-2 bg-cyan-subtle)
          (bg-completion-match-3 bg-red-subtle)

          (border-mode-line-active bg-mode-line-active)
          (border-mode-line-inactive bg-mode-line-inactive)))


  (setq modus-themes-to-toggle '(modus-operandi modus-vivendi-deuteranopia))


  (modus-themes-load-theme 'modus-vivendi-deuteranopia))


(use-package rainbow-delimiters :hook prog-mode)

(use-package goggles :hook ((prog-mode text-mode) . goggles-mode))


(use-package indent-bars
  :hook prog-mode
  :custom
  (indent-bars-prefer-character t) ;no needed after emacs-30 for windows.
  (indent-bars-treesit-support t)
  (indent-bars-no-descend-lists t))

(use-package yascroll :hook (after-init . global-yascroll-bar-mode))

;; (use-package minions :hook after-init)


(provide 'ui-theme)
;;; ui-theme.el ends here
