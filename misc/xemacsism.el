;;;
;;; Handy things found in XEmacs that are not in GNUEmacs
;;;

(defun count-words-region (start end &optional buffer) 
  "Print the number of words in region between START and END in BUFFER. 
If called noninteractively, the value is returned rather than printed. 
BUFFER defaults to the current buffer." 
  (interactive "_r") 
  (save-excursion 
    (set-buffer (or buffer (current-buffer))) 
    (let ((words 0)) 
      (goto-char start) 
      (while (< (point) end) 
        (when (forward-word 1)
          (incf words))) 
      (when  (interactive-p) 
        (message "Region has %d words" words)) 
      words))) 


(defun count-words-buffer (&optional buffer) 
  "Print the number of words in BUFFER. 
If called noninteractively, the value is returned rather than printed. 
BUFFER defaults to the current buffer." 
  (interactive) 
  (let ((words (count-words-region (point-min) (point-max) buffer))) 
    (when (interactive-p) 
      (message "Buffer has %d words" words)) 
    words))


(defun count-lines-buffer (&optional buffer) 
  "Print number of lines and characters in BUFFER." 
  (interactive) 
  (with-current-buffer (or buffer (current-buffer)) 
    (let ((cnt (count-lines (point-min) (point-max)))) 
      (message "Buffer has %d lines, %d characters" 
               cnt (- (point-max) (point-min))) 
      cnt))) 


(defun backward-kill-line nil 
  "Kill back to the beginning of the line." 
  (interactive) 
  (let ((point (point))) 
    (beginning-of-line nil) 
    (kill-region (point) point)))


(defun prefix-region (prefix) 
  "Add a prefix string to each line between mark and point." 
  (interactive "sPrefix string: ") 
  (if prefix 
      (let ((count (count-lines (mark) (point)))) 
        (goto-char (min (mark) (point))) 
        (while (> count 0) 
          (setq count (1- count)) 
          (beginning-of-line 1) 
          (insert prefix) 
          (end-of-line 1) 
          (forward-char 1)))))
