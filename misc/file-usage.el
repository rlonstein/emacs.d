(defvar file-usage-timestamp-format "%Y-%m-%dT%T%z") ; ISO 8601
(defvar file-usage-logfile "/tmp/file-usage.log")

(defun file-usage-timestamp ()
  (format-time-string file-usage-timestamp-format))

(defun file-usage-log-line (action buffer)
  (concat (file-usage-timestamp) " (" action ") " (buffer-file-name buffer)))

(defun file-usage-logging-hook ()
  (let* ((buf (current-buffer))
         (logline (file-usage-log-line "save" buf)))
    (save-excursion 
      (find-file file-usage-logfile)
      (goto-char (point-max))
      (insert-string logline)
      (newline)
      (write-file file-usage-logfile)
      (message "file-usage: logged save")
      (switch-to-buffer buf))))

(add-hook 'cperl-mode-hook 
          '(lambda() 
             (progn 
               (make-local-variable 'after-save-hook)
               (add-hook 'after-save-hook #'file-usage-logging-hook))))
