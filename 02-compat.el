;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Compatibility hacks, preferred or needed for various before
;; loading. YMMV.
;;

;; hack for emacs crash on gtk3/x11. Maybe also set XLIB_SKIP_ARGB_VISUALS=1
;; https://lists.gnu.org/r/bug-gnu-emacs/2018-04/msg00821.html
;; (setq default-frame-alist
;;       (append default-frame-alist '((inhibit-double-buffering . t))))

;; Use Common Lisp. Default in XEmacs, deprecated in GNUEmacs. I think
;; RMS is wrong on this.
(if (not +running-xemacs+) (require 'cl))

;; compatibility with XEmacs, from Lucid Emacs
;; I use this in myskeleton-pairs below...
(if (not +running-xemacs+)
    (defun event-key (event)
      "Returns the KeySym of the given key-press event.
The value is an ASCII printing character (not upper case) or a symbol."
      (if (symbolp event)
          (car (get event 'event-symbol-elements))
        (let ((base (logand event (1- (lsh 1 18)))))
          (downcase (if (< base 32) (logior base 64) base))))))

;; Not defined in Emacs < 21.3.
(unless (commandp 'find-library)
  (defun find-library (library)
    "Open LIBRARY."
    (interactive "sLibrary: ")
    (let ((filename (locate-library (concat library ".el"))))
      (if (stringp filename)
          (find-file filename)
        (message "Library %s not found." library)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
