;;; simpleclip-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "simpleclip" "simpleclip.el" (0 0 0 0))
;;; Generated autoloads from simpleclip.el

(let ((loads (get 'simpleclip 'custom-loads))) (if (member '"simpleclip" loads) nil (put 'simpleclip 'custom-loads (cons '"simpleclip" loads))))

(let ((loads (get 'simpleclip-keys 'custom-loads))) (if (member '"simpleclip" loads) nil (put 'simpleclip-keys 'custom-loads (cons '"simpleclip" loads))))

(autoload 'simpleclip-get-contents "simpleclip" "\
Return the contents of the system clipboard as a string." nil nil)

(autoload 'simpleclip-set-contents "simpleclip" "\
Set the contents of the system clipboard to STR-VAL.

\(fn STR-VAL)" nil nil)

(defvar simpleclip-mode nil "\
Non-nil if Simpleclip mode is enabled.
See the `simpleclip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `simpleclip-mode'.")

(custom-autoload 'simpleclip-mode "simpleclip" nil)

(autoload 'simpleclip-mode "simpleclip" "\
Turn on `simpleclip-mode'.

If called interactively, enable Simpleclip mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

When called interactively with no prefix argument this command
toggles the mode.  With a prefix argument, it enables the mode
if the argument is positive and otherwise disables the mode.

When called from Lisp, this command enables the mode if the
argument is omitted or nil, and toggles the mode if the argument
is 'toggle.

\(fn &optional ARG)" t nil)

(autoload 'simpleclip-copy "simpleclip" "\
Copy the active region (from BEG to END) to the system clipboard.

\(fn BEG END)" t nil)

(autoload 'simpleclip-cut "simpleclip" "\
Cut the active region (from BEG to END) to the system clipboard.

\(fn BEG END)" t nil)

(autoload 'simpleclip-paste "simpleclip" "\
Paste the contents of the system clipboard at the point." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "simpleclip" '("simpleclip-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; simpleclip-autoloads.el ends here
