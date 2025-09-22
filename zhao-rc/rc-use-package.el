;;; rc-use-package.el ---
;; Use Package (for simplicity)

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq package-native-compile t)

(package-initialize)


(setq use-package-always-ensure t)

;; (setq use-package-verbose t)


(add-hook 'package-menu-mode-hook #'hl-line-mode)


(provide 'rc-use-package)
;;; rc-use-package.el ends here
