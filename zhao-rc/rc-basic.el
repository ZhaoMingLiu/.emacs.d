;;; rc-basic.el ---

;; the good: `https://git.sr.ht/~ashton314/emacs-bedrock'

(setq user-full-name "Zhao Liu"
      user-mail-address "liu125927137@gmail.com")

(setq frame-title-format '("GNU Emacs"))

(setq visible-bell t)
;; (setq ring-bell-function 'ignore)

;; (setq scroll-preserve-screen-position t)

(when system-type 'windows-nt
      (setq w32-recognize-altgr nil))

(setopt switch-to-buffer-obey-display-actions t)


(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)


(defun rc-basic/prog ()
  (setq-local show-trailing-whitespace t
	      indicate-empty-lines t
	      display-line-numbers-width 3)
  (display-line-numbers-mode :toggle)
  (electric-pair-mode))

(add-hook 'prog-mode-hook #'rc-basic/prog)


;;;; Info and help-mode hacks
;; (defun rc-basic/help ()
;;   (variable-pitch-mode t)
;;   (switch-to-buffer-other-window "*Help*"))

(add-hook 'help-mode-hook 'variable-pitch-mode)

(add-hook 'Info-mode-hook 'variable-pitch-mode)

(use-package visual-fill-column
  :hook ((Info-mode
	  help-mode)
	 . visual-line-fill-column-mode)
  :custom (visual-fill-column-center-text t))


(save-place-mode)
;; (repeat-mode)
;; (global-auto-revert-mode)
;; (global-display-fill-column-indicator-mode)


;;;; Delete selection
(use-package delsel
  :ensure nil
  :hook (after-init . delete-selection-mode))


(provide 'rc-basic)
;;; rc-basic.el ends here
