;;; rc-completion.el ---

(setopt completions-detailed t)

(use-package savehist :hook after-init)

(use-package orderless
  :init (icomplete-mode)
  :custom
  (completion-styles '(orderless basic))

  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles
					  basic
					  partial-completion)))))

;; (use-package icomplete
;;   :ensure nil
;;   :config
;;   (fido-vertical-mode))


(use-package vertico
  :pin gnu
  ;; :after vertico-prescient
  :hook after-init
  :custom-face
  (marginalia-file-priv-dir ((t :weight bold)))
  :config
  ;; (setq vertico-resize t)

  (setq vertico-multiform-commands
        '((consult-line buffer)
          (consult-ripgrep buffer)
          (consult-imenu buffer reverse)

          (execute-extended-command
           (+vertico-transform-functions . +vertico-highlight-enabled-mode))))

  (setq vertico-multiform-categories
        '((file
           buffer
           reverse
           (+vertico-transform-functions . +vertico-highlight-directory)
           (vertico-sort-function . sort-directories-first))))

  ;; (vertico-multiform-mode)

  (vertico-mode)


  ;; (setq completion-in-region-function
  ;;       (lambda (&rest args)
  ;;         (apply (if vertico-mode
  ;;                    #'consult-completion-in-region
  ;;                  #'completion--in-region)
  ;;                args)))


  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
                  (replace-regexp-in-string
                   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
                   crm-separator)
                  (car args))
          (cdr args)))
  ;; (advice-add #'completing-read-multiple :filter-args #'crm-indicator)


  (defun sort-directories-first (files)
    ;; Still sort by history position, length and alphabetically
    (setq files (vertico-sort-history-length-alpha files))
    ;; But then move directories first
    (nconc (seq-filter (lambda (x) (string-suffix-p "/" x)) files)
           (seq-remove (lambda (x) (string-suffix-p "/" x)) files)))


  (defvar +vertico-transform-functions nil)

  (cl-defmethod vertico--format-candidate :around
    (cand prefix suffix index start &context ((not +vertico-transform-functions) null))
    (dolist (fun (ensure-list +vertico-transform-functions))
      (setq cand (funcall fun cand)))
    (cl-call-next-method cand prefix suffix index start))

  (defun +vertico-highlight-directory (file)
    "If FILE ends with a slash, highlight it as a directory."
    (if (string-suffix-p "/" file)
        (propertize file 'face 'marginalia-file-priv-dir) ; or face 'dired-directory
      file))

  ;; function to highlight enabled modes similar to counsel-M-x
  (defun +vertico-highlight-enabled-mode (cmd)
    "If MODE is enabled, highlight it as font-lock-constant-face."
    (let ((sym (intern cmd)))
      (if (or (eq sym major-mode)
              (and
               (memq sym minor-mode-list)
               (boundp sym)))
          (propertize cmd 'face 'font-lock-constant-face)
        cmd)))


  (defun my/vertico-truncate-candidates (args)
    (if-let ((arg (car args))
             (type (get-text-property 0 'multi-category arg))
             ((eq (car-safe type) 'file))
             (w (max 30 (- (window-width) 38)))
             (l (length arg))
             ((> l w)))
        (setcar args (concat "…" (truncate-string-to-width arg l (- l w)))))
    args)
  (advice-add #'vertico--format-candidate :filter-args #'my/vertico-truncate-candidates))


(use-package recentf
  ;; :hook ((after-init . recentf-load-list)
  ;; (buffer-list-update-hook . recentf-track-opened-file))
  :hook ((after-init . recentf-mode)
         (buffer-list-update-hook . recentf-track-opened-file))
  :bind (
         ("C-x C-r" . recentf-open)
         ("C-S-t"   . recentf-open-most-recent-file))) ;like in browser


(provide 'rc-completion)
;;; rc-completion.el ends here
