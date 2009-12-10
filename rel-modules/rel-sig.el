;;
;; Choose a random signature from a vanilla text fortune file
;; (entries separated by a percentage symbol)
;;
;; (c) 2009, R. Lonstein
;; http://creativecommons.org/licenses/MIT/
;;

(eval-when-compile
  (require 'cl))     ; because I like CL's LOOP macro...

(defvar rel-sigfile "~/.sigs")

(defun rel-pick-fortune ()
  "Choose a random entry from a fortune file (percent separated)"
  (with-temp-buffer
    (insert-file-contents (expand-file-name rel-sigfile))
    (random t)
    (loop with sig = ""
          for counter = 1 then (1+ counter)
          while (< (point) (buffer-size))
          do (let ((start (point)))
               (search-forward-regexp "^%\n" (buffer-size) 1)
               (if (< (random counter) 1)
                   (setq sig (buffer-substring start (forward-point -2)))))
          finally (return sig))))

(defun rel-truncate-up-to-sig ()
  "Remove everything from the end of the buffer up to and including the first sig"
  (save-excursion
    (goto-char (point-max))
    (if (search-backward-regexp "^--$" (point-min) t)
        (delete-region (point) (point-max)))))

(defun rel-sig ()
  "Insert a random signature, removing existing"
  (interactive)
  (rel-truncate-up-to-sig)
  (save-excursion
    (goto-char (point-max))
    (insert "--\n" (rel-pick-fortune))))

(provide 'rel-sig)
