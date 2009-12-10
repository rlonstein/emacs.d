;;;
;;; various conveniences
;;;
;;;
;;; (c) 2009, R. Lonstein
;;; http://creativecommons.org/licenses/MIT/
;;;

(defun localize-load-path (subpath)
  "Return path below local elisp path for subpath"
  (concat +local-elisp-subpath+ subpath))

(defun add-to-hook (hook-name f)
  (unless (and (symbol-value hook-name) (member hook-name f))
    (add-hook (intern hook-name) f)))

(defun rel-suspend-emacs ()
  (interactive)
  (if (yes-or-no-p "Do you want to suspend ")
      (suspend-emacs)))

(defun rel-exit-emacs ()
  (interactive)
  (if (yes-or-no-p "Are you sure want to exit ")
      (save-buffers-kill-emacs)))

(global-set-key "\C-z"     'rel-suspend-emacs)
(global-set-key "\C-x\C-z" 'rel-suspend-emacs)
(global-set-key "\C-x\C-c" 'rel-exit-emacs)

(provide 'rel-conveniences)
