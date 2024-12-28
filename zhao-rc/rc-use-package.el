;;; rc-use-package.el ---
;; Use Package (for simplicity)

(require 'package)
(require 'use-package-ensure)

(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq package-native-compile t)


(setq use-package-always-ensure t)

;; (setq use-package-verbose t)


(provide 'rc-use-package)
;;; rc-use-package.el ends here
