;; various local environment tests and constants used to determine behavior
;; mostly for path-related things
(defconst +running-xemacs+  (or (featurep 'xemacs) (string-match "XEmacs\\|Lucid" emacs-version)))
(defconst +running-osx+     (equal 'darwin system-type))
(defconst +running-carbon-emacs+ (featurep 'mac-carbon))
(defconst +running-windows+ (equal 'windows system-type))
(defconst +running-bsd+     (equal 'berkeley-unix system-type))
(defconst +running-linux+   (equal 'gnu/linux system-type))

(defconst +is-employer-host+
  (cond
   ((file-directory-p (expand-file-name "/ms/")) t)
   ((file-directory-p (expand-file-name "/gns/")) t)
   ((and +running-windows+ (file-exists-p "Z:"))) ; rough but good enough?
   (+running-osx+ nil)
   (t nil)))

(defconst +homedir+ (expand-file-name "~")) ; there's no place like $HOME 

(defconst +perl+ 
  (cond (+is-employer-host+
         (cond ((file-directory-p (expand-file-name "/ms/")) "/ms/dist/perl5/bin/perl5.8")
               (((file-directory-p (expand-file-name "/gns/")) "perl"))))
        (+running-osx+ "/opt/local/bin/perl")
        (+running-bsd+ "/usr/pkg/bin/perl")
        (t "perl")))

(defconst +local-elisp-subpath+
  (concat +homedir+ "/"
          (cond (+is-employer-host+
                 (if +running-windows+ "elisp") "/.emacs.d")
                ((or +running-bsd+ +running-osx+ +running-linux+) ".emacs.d")
                (t                  "emacsen"))))

(defconst +init-file-path+ (file-name-directory user-init-file))

(provide 'env-local)
