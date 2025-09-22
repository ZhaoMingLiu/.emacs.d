;;; rc-basic.el ---
;; the good: `https://git.sr.ht/~ashton314/emacs-bedrock'

(setq user-full-name "Zhao Liu"
      user-mail-address "liu125927137@gmail.com")

(setq frame-title-format '("GNU Emacs"))

(setq visible-bell t)

;; (setq scroll-preserve-screen-position t)

;;;; Make me feel at home
(when system-type 'windows-nt
      (setq default-directory (concat (getenv "USERPROFILE") "/"))
      (setq w32-recognize-altgr nil))


;;;; Coding type
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)


;;;; Minihack for such modes
(defun rc-basic/prog ()
  (setq-local show-trailing-whitespace t
	      indicate-empty-lines t
	      display-line-numbers-width 3)
  (display-line-numbers-mode :toggle)
  (electric-pair-mode))

(add-hook 'prog-mode-hook #'rc-basic/prog)


(add-hook 'help-mode-hook 'variable-pitch-mode)

(add-hook 'Info-mode-hook 'variable-pitch-mode)


;;;; Delete selection
(use-package delsel
  :ensure nil
  :hook (after-init . delete-selection-mode))


(global-completion-preview-mode t)
(which-key-mode t)
(save-place-mode t)


(provide 'rc-basic)
;;; rc-basic.el ends here
