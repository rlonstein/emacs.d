;;; derp --- apply meme-style mocking-case to a line or region
;;;


(defun replace-char-at-position (pos char)
  "Replace the character as the given position."
  (save-excursion
    (goto-char pos)
    (delete-char 1)
    (insert-char char)))

(defun derp-maybe-case (char &optional upcase)
  "Randomly case the supplied character."
  (if upcase
      (upcase char)
    (if (> (random) 1)
      (upcase char)
      (downcase char))))

(defun derp-region (beginning end)
  "Replace the characters in the region with mocking case."
  (interactive "r")
  (save-excursion
    (goto-char beginning)
    (while (< (point) end)
      (let* ((pos (point))
             (char (derp-maybe-case
                    (char-after pos)
                    (or (= pos beginning)
                        (= pos (- end 1))))))
        (replace-char-at-position pos char)
        (forward-char)))))

(defun derp-word ()
  "Apply mocking-case to next word"
  (interactive)
  (mark-word)
  (derp-region (point) (mark)))

(defun derp ()
  "DWIM apply mocking case to word or region"
  (interactive)
  (if (use-region-p)
      (derp-region (region-beginning) (region-end))
    (derp-word)))

(provide 'derp)

;;; derp.el ends here
