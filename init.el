;; Main Stuff

;;; Mac Specific 
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;;; Buffer Management
(global-set-key "\C-x\C-b" 'electric-buffer-list)

;;; Visual Stuff
;;;; No Bars n stuff
(menu-bar-mode -1)
(tool-bar-mode -1)

;;; Auth info stuff
(setq epa-pinentry-mode 'loopback)
(setq auth-sources '("~/.authinfo.gpg"))
(setq auth-source-debug t)

;;; Backup File Creation 
(setq make-backup-files nil)
(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

;;; Package Stuff
(require 'use-package)

;;;; Repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")t)
(package-initialize)

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
 '(package-selected-packages '(org-roam magithub use-package backup-each-save magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


