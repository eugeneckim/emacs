;; Main Stuff
;;;; Visual
(setq menu-bar-mode nil)
(setq tool-bar-mode nil)

(setq epa-pinentry-mode 'loopback)

(setq make-backup-files nil)
(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

;; Package Stuff
(require 'use-package)

;;; Repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;;; Auth info stuff
(setq auth-sources '("~/.authinfo.gpg"))
(setq auth-source-debug t)

;;; Magit/Github style stuff
(use-package magit)
(use-package ghub)
(setq ghub-use-workaround-for-emacs-bug 'force)
(setq magit-git-debug t)
(setq password-cache nil)
(setq magit-process-find-password-functions '(magit-process-password-auth-source))

(use-package magithub
  :after magit
  :ensure t
  :config (magithub-feature-autoinject t))

;;;; magithub
;;(require 'magit-gh-pulls)
;;(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

;; General Hooks 'n' stuff
(add-hook 'after-init-hook 'global-company-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magithub magit-gh-pulls magit solarized-theme dashboard company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-highlight-prompt ((t nil)))
 '(magit-diff-added ((t (:extend t :background "black" :foreground "#22aa22"))))
 '(magit-diff-base ((t (:extend t :background "black" :foreground "#aaaa11"))))
 '(magit-diff-base-highlight ((t (:extend t :background "black" :foreground "#aaaa11"))))
 '(magit-diff-context-highlight ((t (:extend t :background "black" :foreground "white"))))
 '(magit-section-highlight ((t (:extend t :background "black"))))
 '(region ((t (:extend t :background "brightcyan")))))


