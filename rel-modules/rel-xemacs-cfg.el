;;; rel-xemacs-cfg.el
;;
;; all things xemacs end up here
;;
;; n.b. circa 2008, I switched to gnuemacs everywhere
;; so some of this might be out of date.
;;

;; Network coding system fix for XEmacs 21.5... by default, it does
;; CR/LF conversion on network streams, which breaks IMAP and
;; potentially other protocols, thanks Ron Isaacson
(when +running-xemacs+
  (when (boundp 'default-network-coding-system)
    (setq default-network-coding-system '(no-conversion))))


;; the clever guys at work have a local package system, use it
(when (and +is-employer-host+ +running-xemacs+)
  (progn
    (when (load "mspackage" t)
      (message "Adding mspackages...")
      (mspackage-add-package "xemacs/emacs-w3m/1.4.4"))))


(if +running-xemacs+
    (progn (require 'redo)
	   (define-key global-map (kbd "C-/") 'undo)
	   (define-key global-map (kbd "C-x C-/") 'redo)))

(if +running-xemacs+ (vc-load-vc-hooks)) ; really?

(provide 'rel-xemacs-cfg)
