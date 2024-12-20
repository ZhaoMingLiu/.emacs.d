;;; rc-calendar.el ---

(use-package taiwan-holidays
  :load-path "C:/Users/zhao/Documents/Pub/taiwan-holidays.el"
  :config
  (defun my/calendarSetup ()
    (setq calendar-mark-holidays-flag t)


    (dolist (my/holidays
             '((holiday-fixed 1 30  "老弟生日")
               (holiday-fixed 3 1   "雅筑生日")
               (holiday-fixed 4 1   "父親紀念日")
               (holiday-fixed 6 15  "老妹生日")
               (holiday-fixed 12 12 "老媽生日")))
      (add-to-list 'taiwan-holidays-general-holidays my/holidays))

    (dolist (more/holidays
             '((holiday-lunar 1 15 "元宵節" 0)
               (holiday-lunar 3 23 "媽祖聖誕" 0)
               (holiday-float 5 0 2 "母親節")
               (holiday-lunar 7 7 "七夕" 0)
               (holiday-lunar 7 15 "中元節" 0)
               (holiday-fixed 8 8 "父親節")
               (holiday-lunar 9 9 "重陽節" 0)
               (holiday-fixed 9 28 "孔子誕辰")
               (holiday-fixed 10 25 "光復紀念日")
               (holiday-fixed 12 25 "聖誕節")))
      (add-to-list 'taiwan-holidays-taiwan-holidays more/holidays))

    (setq taiwan-holidays-important-holidays taiwan-holidays-taiwan-holidays)

    (setq calendar-holidays
          (append taiwan-holidays-important-holidays
                  taiwan-holidays-general-holidays))



    ;; (set-window-scroll-bars
    ;;  (selected-window) 0 nil 0 nil t)

    ;; (set-window-fringes
    ;;  (selected-window) 8 8 5 t)


    (hl-line-mode t)
    (display-line-numbers-mode -1))
  :hook (calendar-mode . my/calendarSetup))


(provide 'rc-calendar)
;;; rc-calendar.el ends here
