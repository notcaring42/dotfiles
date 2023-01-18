;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)

;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

(straight-use-package 'use-package)


(use-package zenburn-theme
  :straight t)
(use-package lsp-mode
  :straight t)
(use-package lsp-ui
  :straight t)
(use-package magit
  :straight t)

(set-face-attribute 'default nil :family "Iosevka" :height 140)
(set-face-attribute 'fixed-pitch nil :family "Iosevka")
(set-face-attribute 'variable-pitch nil :family "Iosevka Aile" :height 140)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq ring-bell-function 'ignore)
(add-to-list 'load-path (expand-file-name "cfg" user-emacs-directory))
(require 'init-org.el)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("a3e99dbdaa138996bb0c9c806bc3c3c6b4fd61d6973b946d750b555af8b7555b" default))
 '(modus-themes-headings
   '((1 overline rainbow)
     (2 overline rainbow)
     (3 rainbow)
     (4 rainbow)))
 '(modus-themes-inhibit-reload nil)
 '(modus-themes-scale-1 1.1)
 '(modus-themes-scale-headings t)
 '(modus-themes-variable-pitch-headings t)
 '(modus-themes-variable-pitch-ui t)
 '(org-agenda-files '("~/Documents/notes/journal.org"))
 '(org-special-ctrl-a/e t)
 '(package-selected-packages
   '(flycheck lsp-ui lsp-mode company js2-mode magit moe-theme eglot-fsharp rec-mode nov eglot fsharp-mode poet-theme zenburn-theme))
 '(tool-bar-mode nil))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
