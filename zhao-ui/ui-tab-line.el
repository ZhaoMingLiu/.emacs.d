;;; ui-tab-line.el --- Modern `tab-line' for Emacs.

(use-package tab-line
  :custom-face
  (tab-line-tab ((t :height 1.2
                    :weight semibold
                    :family "JetBrains Mono")))

  (tab-line-tab-current ((t :weight medium
                            :overline t
                            :inherit tab-line-tab)))

  (tab-line-tab-inactive ((t :inherit tab-line-tab)))
  :hook after-init
  :config
  (global-tab-line-mode))


(provide 'ui-tab-line)
;;; ui-tab-line.el ends here