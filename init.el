;;Include package.el
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;Configure Packages
(require 'smartparens-config)
(smartparens-global-strict-mode)

(add-hook 'after-init-hook 'global-company-mode)

(load-theme 'zenburn t)

(which-key-mode)

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
(setq initial-scratch-message nil)

;;Enable Stuff
(global-display-line-numbers-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

;;Disable Auto Save
(setq make-backup-files nil)

;;Set Tab width
(setq-default tab-width 4
	      indent-tabs-mode nil)

;;Set contat
(setq user-full-name "Thomas Oberlin"
      user-mail-adress "thomas.l.oberlin@gmail.com")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(zenburn-theme which-key company eglot magit simpleclip smartparens)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
