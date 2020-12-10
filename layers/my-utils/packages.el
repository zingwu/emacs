;;; packages.el --- my-utils layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: 吴昊 <wuhao@wuhaodeMacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `my-utils-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `my-utils/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `my-utils/pre-init-PACKAGE' and/or
;;   `my-utils/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst my-utils-packages
  '((auto-save :location local)))

(defun my-utils/init-auto-save ()
  (use-package auto-save
    :config
    (progn
      (auto-save-enable)
      (setq auto-save-silent t))))

;;; packages.el ends here
