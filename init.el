(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Swap “C-t” and “C-x”, so it's easier to type on Dvorak layout
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)

;;Disable Stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)

;;Enable Stuff
(global-hl-line-mode +1)
(line-number-mode +1)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(size-indication-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(desktop-save-mode 1)

;;Auto Save Settings
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;Set Tab width
(setq-default tab-width 4
	      indent-tabs-mode nil)

;;Set contact
(setq user-full-name "Thomas Oberlin"
      user-mail-adress "thomas.l.oberlin@gmail.com")

;;Set Load Paths
(let ((default-directory  "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;Require "use-package"
(require 'use-package)

;;Use Packages

(use-package gruvbox
  :config
  (load-theme 'gruvbox-dark-hard))


(use-package ivy
  :config
  (ivy-mode t)
  (setq ivy-height 10))

(use-package swiper
  )
(global-set-key (kbd "C-s") 'swiper) 

(use-package simpleclip
  :config
  (simpleclip-mode 1))

(use-package company
  :bind ("C-." . company-complete)
  :config
  (global-company-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package prescient)
(use-package ivy-prescient
  :config
  (ivy-prescient-mode))
(use-package company-prescient
  :config
  (company-prescient-mode))

(use-package magit)


