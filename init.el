;; Swap “C-t” and “C-x”, so it's easier to type on Dvorak layout
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)
;;(keyboard-translate ?\M-t ?\M-x)
;;(keyboard-translate ?\M-x ?\M-t)

;;Disable Stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)

;;Enable Stuff
(global-hl-line-mode +1)
(line-number-mode +1)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(size-indication-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;;Set Tab width
(setq-default tab-width 4
	      indent-tabs-mode nil)

;;Set contact
(setq user-full-name "Thomas Oberlin"
      user-mail-adress "thomas.l.oberlin@gmail.com")

;;Set Load Paths
(add-to-list 'load-path "~/.emacs.d/lisp/use-package/")
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-doom-themes/")
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;Require "use-package"
(require 'use-package)

;;Use Packages
(use-package doom-themes
  :config
  (load-theme 'doom-one t)
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
