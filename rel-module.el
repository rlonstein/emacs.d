;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Fiddle with local modules and paths. I want to toggle individual
;; modules in one place. Set up alist of local module structs indexed
;; by module name and adjust the path, executing code if supplied.
;;

(defstruct rel-module
  (name :type string)
  (load t :type boolean)
  (path nil :type string)    ; path or path fragment
  (relative t :type boolean) ; not relative to home elisp dir
  (exec nil :type sexp))

(defmacro rel-new-module-entry (&rest args)
  `(let* ((g (gensym))
          (g (make-rel-module ,@args)))
     (cons (rel-module-name g) g)))

(defvar rel-local-modules nil)

(defun rel-local-module-enabled-p (name)
  (when (assoc name rel-local-modules) (rel-module-load (cdr (assoc name rel-local-modules)))))

(defun rel-add-to-load-path (path-string)
  (message (format "Checking %S..." path-string))
  (if (stringp path-string)
      (if (file-exists-p path-string)
	  (progn
	    (message (format "Adding %S to load-path..." path-string))
	    (add-to-list 'load-path (expand-file-name path-string)))
	(message (format "Skipping %S, path not found" path-string)))
    (message (format "Skipping %s, not a string" path-string))))


