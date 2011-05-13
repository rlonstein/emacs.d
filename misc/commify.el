
;;; from Sunrise commander, sr-size-format
(defun commify (size)
  "Formats the given (floating) number as a string representation of an integer
    with separating commas for thousands, millions, etc."
  (let* ((num (replace-regexp-in-string "\\..*$" "" (number-to-string size)))
         (digits (reverse (split-string num "" t)))
         result)
    (dotimes (n (length digits) result)
      (if (and (< 0 n) (zerop (% n 3)))
          (setq result (concat "," result)))
      (setq result (concat (pop digits) result)))))

