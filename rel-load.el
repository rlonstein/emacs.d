;;;
;;; (c) 2009, R. Lonstein
;;; http://creativecommons.org/licenses/MIT/
;;;

(defvar rel-dot-filename ".module.el")
(defvar rel-load-dir-recurse t)
(defvar rel-load-dir-debug t)
(defvar rel-dotmodule-debug t)
(defvar rel-module-default-enabled nil)
(defvar modules)


(defun rel-eval-dot-module (dir)
  (let ((module-file (concat (file-name-as-directory dir) rel-dot-filename))
        (modules nil))
    (if (file-readable-p module-file)
        (when rel-dotmodule-debug 
          (message "Loading settings from [%s]" module-file)
          (with-temp-buffer
            (ignore-errors
              (insert-file-contents module-file))
            (let (form)
              (while (setq form (condition-case nil
                                    (read (current-buffer)) (error nil)))
                (eval form))))))   ; surely there's a better way than eval...
    (when rel-dotmodule-debug (message "Modules are [%S]" modules))
    modules))


(defun rel-file-dir-recurse-p (file)
  "Test if the file is a subdirectory and recursion is enabled"
  (and rel-load-dir-recurse
       (file-directory-p file)
       (not (string-match "^\\." (file-name-nondirectory file)))))


(defun rel-is-module-enabled-p (file modules)
  (let ((module-setting (assoc (file-name-nondirectory file) modules)))
    (if (and rel-module-default-enabled (null module-setting)) t
      (cdr module-setting))))


(defun rel-load-dir-contents (dir)
  "Load the elisp files in the supplied directory"
  (let ((modules (rel-eval-dot-module dir)))
    (dolist (file (directory-files dir t)
                  (message "Completed loading of [%s]" dir))
      (if (file-directory-p file) (if (rel-file-dir-recurse-p file) (rel-load-dir-contents dir))
        (if (rel-is-module-enabled-p file modules)
            (progn (when rel-load-dir-debug (message "Loading [%s]" file))
                   (load file))
          (when rel-load-dir-debug (message "Skipping [%s], not enabled" file)))))))


(provide 'rel-load)
