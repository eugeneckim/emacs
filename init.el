;; Attempting to do bootstrapping of the file per:
;;https://github.com/zamansky/using-emacs/blob/master/init.el

(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 10000)

(require 'package)

;; Do this at the beginning because these files are all symlinked an
;; vc'd.
(setq vc-follow-symlinks nil)


;; Some repo stuff before everything.
(setq package-enable-at-startup nil)
 (add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives
;; 	     '("gnu" . "https://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives
;;	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load our real init file
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))


;; All the custom stuff that is auto-populated.  Best not to touch,
;; from what I understand.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(solarized-zenburn))
 '(custom-safe-themes
   '("51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" default))
 '(gnutls-algorithm-priority "normal:-vers-tls1.3")
 '(org-roam-capture-immediate-template '(:immediate-finish t))
 '(org-roam-capture-templates
   '(("d" "default" plain "%?" :if-new
      (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}
")
      :unnarrowed t)))
 '(package-selected-packages
   '(auto-package-update ivy fountain-mode helm solarized-theme org-roam magithub use-package backup-each-save magit)))




