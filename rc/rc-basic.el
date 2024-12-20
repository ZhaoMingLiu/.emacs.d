;;; rc-basic.el ---

;; the good: `https://git.sr.ht/~ashton314/emacs-bedrock'

(setq user-full-name "Zhao Liu"
      user-mail-address "liu125927137@gmail.com")

(setq frame-title-format '("GNU Emacs"))

(setq visible-bell t)
;; (setq ring-bell-function 'ignore)

(when system-type 'windows-nt
      (setq w32-recognize-altgr nil))


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


(save-place-mode)
;; (repeat-mode)
;; (global-auto-revert-mode)
;; (global-display-line-numbers-mode)
;; (global-display-fill-column-indicator-mode)


;;;; Delete selection
(use-package delsel
  :ensure nil
  :hook (after-init . delete-selection-mode))


(provide 'rc-basic)
;;; rc-basic.el ends here
