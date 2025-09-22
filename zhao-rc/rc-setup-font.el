;;; rc-setup-font.el --- Advanced font setup for Chinese and Org-mode.

;; I stolen this file from `https://github.com/coldnew/coldnew-emacs/blob/master/local-lisp/setup-font.el'
;; `https://github.com/kuanyui/.emacs.d/blob/master/rc/rc-basic.el#L166'
;; `http://xahlee.info/emacs/emacs/emacs_set_font_emoji.html'.


;; (defvar emacs-english-font "JetBrains Mono"
;;   "The font name of English.")

;; (defvar emacs-english-font "Fira Code"
;;   "The font name of English.")

;; (defvar emacs-english-font "Iosevka NF"
;;   "The font name of English.")

;; (defvar emacs-english-font "RecMonoSmCasual Nerd Font Mono"
;;   "The font name of English.")

(defvar emacs-english-font "AdwaitaMono Nerd Font Propo"
  "The font name of English.")

(defvar emacs-cjk-font "LXGW Marker Gothic"
  "The font name for CJK.")

;; (defvar emacs-cjk-font "LXGW ZhiSong CL"
;;   "The font name for CJK.")

;; (defvar emacs-cjk-font "LXGW XiHei MN"
;;   "The font name for CJK.")

;; (set-face-attribute 'variable-pitch nil
;; 		    :family "Iosevka NFP"
;; 		    :weight 'Medium)

;; (set-face-attribute 'variable-pitch nil
;; 		    :family "RecMonoCasual Nerd Font Mono"
;; 		    :weight 'Medium)

(set-face-attribute 'variable-pitch nil
		    :family "Fira Code Retina"
		    :weight 'Medium)

(set-face-attribute 'fixed-pitch nil
		    :family emacs-english-font)

(defvar emacs-font-size-pair '(17 . 20)
  "Default font size pair for (english . chinese)")

(defvar emacs-font-size-pair-list
  '(( 5 .  6) (10 . 12)
    (13 . 16) (15 . 18) (17 . 20)
    (19 . 22) (20 . 24) (21 . 26)
    (24 . 28) (26 . 32) (28 . 34)
    (30 . 36) (34 . 40) (36 . 44))
  "This list is used to store matching (english . chinese) font-size.")


(defun font-exist-p (fontname)
  "Test if this font is exist or not.
This function only work on GUI mode, on terminal it just
return nil since you can't set font for emacs on it."
  (if (or (not fontname) (string= fontname "") (not (display-graphic-p)))
      nil
      (if (not (x-list-fonts fontname))
          nil t)))

(defun set-font (english chinese size-pair)
  "Setup emacs English and Chinese font on x window-system."

  (if (font-exist-p english)
      (set-frame-font (format "%s:pixelsize=%d" english (car size-pair)) t))

  (if (font-exist-p chinese)
      (dolist (charset '(kana han cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font) charset
                          (font-spec :family chinese :size (cdr size-pair))))))

;; Setup font size based on emacs-font-size-pair
(set-font emacs-english-font emacs-cjk-font emacs-font-size-pair)

;; If running in daemon mode
(add-hook 'server-after-make-frame-hook (lambda ()
                                          (set-font
                                           emacs-english-font
                                           emacs-cjk-font
                                           emacs-font-size-pair)))

(progn
  ;; set font for emoji (if before emacs 28, should come after setting symbols. emacs 28 now has 'emoji . before, emoji is part of 'symbol)
  (set-fontset-font
   t
   (if (version< emacs-version "28.1")
       '(#x1f300 . #x1fad0)
     'emoji
     )
   (cond
    ((member "Apple Color Emoji" (font-family-list)) "Apple Color Emoji")
    ((member "Noto Color Emoji" (font-family-list)) "Noto Color Emoji")
    ((member "Noto Emoji" (font-family-list)) "Noto Emoji")
    ((member "Segoe UI Emoji" (font-family-list)) "Segoe UI Emoji")
    ((member "Symbola" (font-family-list)) "Symbola"))))


(provide 'rc-setup-font)
;; rc-setup-font.el ends here
