(defun surrounded-by-p (char)
  "Returns t if word is surrounded by given char."
  (save-excursion
    (and (forward-word -1)
         (equal char (char-before))
         (forward-word 1)
         (equal char (char-after)))))

(defun surround-word (char &optional force)
  "Surrounds word with given character.  If force is nil and word
 is already surrounded by given character remoevs them."
  (save-excursion
    (if (not (surrounded-by-p char))
        (progn
          (forward-word 1)
          (insert char)
          (forward-word -1)
          (insert char)
          t)
      (forward-word 1)
      (delete-char 1)
      (forward-word -1)
      (delete-char -1)
      nil)))

(defun my-bold-word (&optional force)
  (interactive "p")
  (surround-word ?* force))
 
(defun my-italic-word (&optional force)
  (interactive "p")
  (surround-word ?/ force))
 
(defun my-underline-word (&optional force)
   (interactive "p")
   (surround-word ?_ force))

(defun my-single-quote (&optional force)
  (interactive "p")
  (surround-word ?\' force))

(defun my-double-quote (&optional force)
  (interactive "p")
  (surround-word ?\" force))

(provide 'surround-word)
