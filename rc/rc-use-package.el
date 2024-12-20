;;; rc-use-package.el ---
;; Use Package (for simplicity)

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-native-compile t)


(require 'use-package-ensure)

(setq use-package-always-ensure t)

(setq use-package-verbose t)


(setq load-prefer-newer t)


(provide 'rc-use-package)
;;; rc-use-package.el ends here
