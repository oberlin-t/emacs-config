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
  :ensure t
  :config
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
)
