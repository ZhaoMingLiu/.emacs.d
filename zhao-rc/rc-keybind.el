;;; rc-keybind.el ---

;; Sensible Keybind
;; (global-unset-key (kbd "C-x f"))
(global-set-key (kbd "C-S-k") 'kill-whole-line)	     ; Essential
(global-set-key (kbd "C-x M-o") 'window-swap-states) ; Essential
(global-set-key (kbd "C-x b") 'ibuffer)	; way better


(defun split-recent-buffer ()
  "Split recent buffers, unless switch to it"
  (interactive)
  (switch-to-buffer-other-window (other-buffer (current-buffer) t)))

(global-set-key (kbd "C-x B") 'split-recent-buffer) ; Fun


(provide 'rc-keybind)
;;; rc-keybind.el ends here
