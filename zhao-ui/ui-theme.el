;;; ui-theme.el --- Happy Hacking

;; (use-package modus-themes
;;   :bind ("<f5>" . #'modus-themes-toggle)

;;   :custom
;;   ((modus-themes-bold-constructs nil)
;;    (modus-themes-italic-constructs t)
;;    (modus-themes-mixed-fonts t)
;;    (modus-themes-variable-pitch-ui t))

;;   :custom-face
;;   ;; (show-paren-match ((t :underline nil
;;   ;;                       :weight semibold)))
;;   (region ((t :extend nil)))

;;   :config
;;   (setq modus-operandi-palette-overrides
;;         `((cursor "#4C566A")

;;           (fg-prompt cyan-faint)
;;           (bg-prompt bg-cyan-nuanced)

;;           (bg-completion bg-inactive)

;;           ,@modus-themes-preset-overrides-cooler))

;;   (setq modus-vivendi-tinted-palette-overrides
;;         `((bg-hl-line bg-cyan-subtle)
;;           (cursor red-faint)

;;           ,@modus-themes-preset-overrides-warmer))

;;   (setq modus-themes-common-palette-overrides
;;         '((fg-region unspecified)
;;           (bg-region bg-lavender)

;;           (border-mode-line-active bg-mode-line-active)
;;           (border-mode-line-inactive bg-mode-line-inactive)

;; 	  ;; (bg-paren-match unspecified)
;; 	  ;; (fg-paren-match unspecified)
;; 	  ))


;;   (setq modus-themes-to-toggle '(modus-operandi modus-vivendi-deuteranopia)))


;; (use-package doric-themes
;;   :bind ("<f5>" . #'doric-themes-toggle)
;;   :config
;;   (setq doric-themes-to-toggle '(doric-marble doric-obsidian)))


(use-package solar
  :ensure nil
  :config
  (setq calendar-latitude   24.14	;Taichung, Taiwan, ROC
        calendar-longitude 120.67))

(use-package circadian
  :hook (emacs-startup . circadian-setup)
  :config
  ;;   (setq circadian-themes '((:sunrise . modus-operandi-tritanopia)
  ;;                            (:sunset  . modus-vivendi-tinted)))

  (setq circadian-themes '((:sunrise . doric-marble)
                           (:sunset  . doric-mermaid)))
  )


;; (use-package tomorrow-night-deepblue-theme
;;   :config
;;   (mapc #'disable-theme custom-enabled-themes)
;;   (load-theme 'tomorrow-night-deepblue t))


;; (use-package rebecca-theme
;;   :config
;;   (mapc #'disable-theme custom-enabled-themes)
;;   (load-theme #'rebecca t))


(provide 'ui-theme)
;;; ui-theme.el ends here
