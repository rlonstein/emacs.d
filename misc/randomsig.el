;;
;; $Id$
;;

(defvar *sigfile* "/home/lonstein/.siglist")

(defun randomsig()
  "Insert a random tagline into buffer from sig file"
  (let ((counter 0)
        (sig "")
        (this-sig "")
        (sigbuf (find-file-noselect *sigfile*)))
    (random t)
    (save-current-buffer)
    (set-buffer sigbuf)
    (loop while ( < (point) (buffer-size)) do
      (let ((start (point)))
        (forward-paragraph)
        (setq this-sig (buffer-substring start (point)))
        (setq counter (incf counter))
        (if ( < (random counter) counter)
            (setq sig this-sig))
        (skip-chars-forward "-\n")))
    (kill-buffer sigbuf)
    (insert sig)))

(provide 'randomsig)