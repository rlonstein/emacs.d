;;
;; (c) 2009, R. Lonstein
;; http://creativecommons.org/licenses/MIT/
;;

(message "Starting rel-module-cfg...")

(setq rel-local-modules
  `( 
    ,(rel-new-module-entry
      :name "modules"
      :path "/modules")
    ,(rel-new-module-entry
      :name "misc"
      :path "/misc")
    ,(rel-new-module-entry
      :name "remember"
      :path "/modules/remember")
    ,(rel-new-module-entry
      :name "org"
      :path "/modules/org")
    ,(rel-new-module-entry
      :name "org-xemacs"
      :load +running-xemacs+
      :path "/modules/org/xemacs"
      :exec '(lambda () (require 'noutline)))
    ,(if (not *is-clbuild*)
         (rel-new-module-entry
          :name "slime"
          :path "/modules/slime"
          :exec '(lambda () (load-file (localize-load-path "/rel-slime-cfg.el")))))
    ,(rel-new-module-entry
      :name "/opt/local/share/emacs"
      :load +running-osx+
      :path "/opt/local/share/emacs/"
      :relative nil)))


;;
;; Ok, now load 'em up
;;
(dolist (entry rel-local-modules)
  (when entry 
    (let ((m (cdr entry)))
      (when (and m (rel-module-load m))
	(progn
	  (add-to-load-path
           (if (rel-module-relative m) (localize-load-path (rel-module-path m))
             (rel-module-path m)))
	  (when (rel-module-exec m) (funcall (rel-module-exec m))))))))

(message "Done with rel-module-cfg...")
