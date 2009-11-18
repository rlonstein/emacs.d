;;;
;;; Shared settings, etc. for XEmacs/Emacs
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Misc. initializations and compatibility stuff
;;
(message "Starting load of Ross's customizations...")

(setq debug-on-error t) ; disabled at end

;(setq inhibit-default-init t)
(setq message-log-max 1000)

;; know where we're running, though (featurep 'xemacs) is better 
(defconst +running-xemacs+  (string-match "XEmacs\\|Lucid" emacs-version)) 
(defconst +running-osx+     (equal 'darwin system-type)) 
(defconst +running-windows+ (equal 'windows system-type)) 
(defconst +running-bsd+     (equal 'berkeley-unix system-type)) 
(defconst +is-employer-host+ (cond 
			    ((file-directory-p (expand-file-name "/ms/dev/")) t)
			    (+running-osx+ nil) 
			    (t nil)))
 
(defconst +homedir+ (expand-file-name "~")) ; there's no place like $HOME 

(defconst +local-elisp-subpath+
   (concat +homedir+ (cond (+is-employer-host+ (if +running-windows+ "/elisp") "/.custom/elisp")
                           (+running-bsd+      "/emacsen")
                           (+running-windows+  "C:/emacsen")
                           (+running-osx+      "/Library/Application Support/emacsen")
                           (t                  "/emacsen"))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Compatibility hacks, preferred or needed for various before
;; loading. YMMV.
;;

;; Use Common Lisp. Default in XEmacs, deprecated in GNUEmacs. I think
;; RMS is wrong on this.
(if (not +running-xemacs+) (require 'cl))

;; compatibility with XEmacs, from Lucid Emacs
;; I use this in myskeleton-pairs below...
(if (not +running-xemacs+)
    (defun event-key (event)
      "Returns the KeySym of the given key-press event.
The value is an ASCII printing character (not upper case) or a symbol."
      (if (symbolp event)
          (car (get event 'event-symbol-elements))
        (let ((base (logand event (1- (lsh 1 18)))))
          (downcase (if (< base 32) (logior base 64) base))))))

;; Not defined in Emacs < 21.3.
(unless (commandp 'find-library)
  (defun find-library (library)
    "Open LIBRARY."
    (interactive "sLibrary: ")
    (let ((filename (locate-library (concat library ".el"))))
      (if (stringp filename)
          (find-file filename)
        (message "Library %s not found." library)))))

;; Network coding system fix for XEmacs 21.5... by default, it does 
;; CR/LF conversion on network streams, which breaks IMAP and 
;; potentially other protocols, thanks Ron Isaacson
(when +running-xemacs+
  (when (boundp 'default-network-coding-system) 
    (setq default-network-coding-system '(no-conversion))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun localize-load-path (subpath)
  "Return path below local elisp path for subpath"
  (concat +local-elisp-subpath+ subpath))

(defun add-to-load-path (path-string) 
  (message (format "Passed %S..." path-string)) 
  (if (stringp path-string) 
      (when (file-exists-p path-string) 
        (message (format "Adding %S to load-path..." path-string)) 
        (add-to-list 'load-path (expand-file-name path-string))))) 

(let ((my-path-list (cond (+is-employer-host+ '("~/.custom/" 
                                           "~/.custom/elisp" 
                                           "~/.custom/elisp/misc" 
                                           "~/.custom/elisp/packages/slime" 
                                           "~/.custom/elisp/packages/remember" 
                                           "~/.custom/elisp/packages/org/lisp" 
                                           "~/.custom/elisp/packages/org/contrib/lisp" 
                                           "~/.custom/elisp/packages/org/xemacs" 
                                           "~/.custom/elisp/packages/color-theme")) 
                       (+running-osx+ '("/opt/local/share/emacs/site-lisp/tiny-tools/lisp/tiny" 
                                        "/opt/local/share/emacs/site-lisp/tiny-tools/lisp/other" 


                                        "/Users/lonstein/Library/Application Support/emacsen/misc" 
                                        "/Users/lonstein/Library/Application Support/emacsen/modules" 
                                        "/Users/lonstein/Library/Application Support/emacsen/sourceforge" 
                                        "/Users/lonstein/Library/Application Support/emacsen/modules/slime" 

                                        "/Users/lonstein/clojure/"
                                        "/Users/lonstein/clojure/swank"
                                        "/Users/lonstein/clojure/swank-clojure"
                                        "/Users/lonstein/clojure/slime"
                                        "/Users/lonstein/clojure/slime/contrib"

					"/Users/lonstein/Library/Application Support/emacsen/modules/slime/contrib"
                                        "/Users/lonstein/Library/Application Support/emacsen/modules/remember"

                                        "/Users/lonstein/Library/Application Support/emacsen/modules/org/lisp" 
                                        "/Users/lonstein/Library/Application Support/emacsen/modules/org/contrib/lisp" 
                                        "/opt/local/share/emacs/site-lisp/w3m")) 
                       (+running-windows+ '("C:\elisp" 
                                          "C:\elisp\misc" 
                                          "C:\elisp\sourceforge" 
                                          "C:\elisp\packages\remember")) 
                       (t '("~/emacsen"
                            "~/emacsen/share/emacs/site-lisp/"
                            "~/emacsen/share/emacs/site-lisp/apel"
                            "~/emacsen/share/emacs/site-lisp/emu"
                            "~/emacsen/share/emacs/site-lisp/flim"
                            "~/emacsen/share/emacs/site-lisp/semi"
                            "~/emacsen/share/emacs/site-lisp/wl"
                            "~/emacsen/misc"
			    "~/emacsen/modules"
                            "~/emacsen/modules/slime" 
			    "~/emacsen/modules/slime/contrib"
			    "~/emacsen/modules/remember"
			    "~/emacsen/modules/org/lisp"
			    "~/emacsen/modules/org/contrib/lisp"))))) 
  (dolist (p my-path-list) (add-to-load-path p)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; the clever guys at work have a local package system, use it
;;
(when (and +is-employer-host+ +running-xemacs+)
  (progn
    (when (load "mspackage" t)
      (message "Adding mspackages...")
      (mspackage-add-package "xemacs/flim/1.14.7") 
      (mspackage-add-package "xemacs/semi/1.14.6") 
      (mspackage-add-package "xemacs/apel/10.6.0") 
      (mspackage-add-package "xemacs/wl/2.12.2") 
      (mspackage-add-package "xemacs/emacs-w3m/1.4.4"))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; some useful local functions, moved to their own file
;;
(message "... defining local functions and customizations...")
(load-file (concat +local-elisp-subpath+ "/rel-module.el"))
(load-file (concat +local-elisp-subpath+ "/rel-module-cfg.el"))
(load-file (concat +local-elisp-subpath+ "/rel-lib.el"))
(load-file (concat +local-elisp-subpath+ "/misc/lazycat.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Jari's Tiny Tools package has great stuff! Explore a bit more...
;;
(when (rel-local-module-enabled-p "tiny-tools")
  (if (not +is-employer-host+) ; for some reason doesn't play well with others, too lazy to fix
      (progn 
        (setq tinypath-:compression-support "all")
        (setq tinypath-:cache-file-prefix "/tmp/tiny.cache")

; load out of wonky path in darwinports nee. macports, not covered above
        (if +running-osx+ (load "/opt/local/share/emacs/site-lisp/tiny-tools/lisp/tiny/tinypath.el"))
        (require 'tiny-setup)
        (tiny-setup nil)
        (tinypath-setup
         'all                        ;; Activate default features safely
         '(tinyeat--bind))           ;; Smarter deletes, n.b. remaps backspace
        )))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; William W. Wong's breadcrumb bookmarks
(if (load "breadcrumb" t)
    (progn
      (global-set-key [(shift space)]         'bc-set)            ;; Shift-SPACE for set bookmark
      (global-set-key [(meta j)]              'bc-previous)       ;; M-j for jump to previous
      (global-set-key [(shift meta j)]        'bc-next)           ;; Shift-M-j for jump to next
      (global-set-key [(meta up)]             'bc-local-previous) ;; M-up-arrow for local previous
      (global-set-key [(meta down)]           'bc-local-next)     ;; M-down-arrow for local next
      (global-set-key [(control c)(j)]        'bc-goto-current)   ;; C-c j for jump to current bookmark
      (global-set-key [(control x)(meta j)]   'bc-list)           ;; C-x M-j for the bookmark menu list
      (message "configured breadcrumb"))
  (message "failed to load breadcrumb"))

;; smarter buffer naming
(if (load "uniquify" t) 
    (progn 
      (setq uniquify-buffer-name-style 'post-forward)
      (load "disbufnam" t)
      (message "configured uniquify"))
  (message "failed to load uniquify"))

(if +running-xemacs+ 
    (progn (require 'redo)
	   (define-key global-map (kbd "C-/") 'undo)
	   (define-key global-map (kbd "C-x C-/") 'redo)))

;; I hate dired but use it anyway
(require 'dired)

;; post mode for mutt/muttng, unix only
(if (and (not +running-osx+) (not +running-windows+))
    (progn (require 'post)
	   (setq auto-mode-alist
		 (cons '("/tmp/mutt.*$" . post-mode) auto-mode-alist))
           (add-hook 'post-mode-hook 'turn-on-filleadapt-mode)
           (add-hook 'post-mode-hook 'footnote-mode)))

;; footnotes
(autoload 'footnote-mode "footnote" nil t)
(add-hook 'post-mode-hook 'footnote-mode)
(add-hook 'text-mode-hook 'footnote-mode)

;; simple network utils/wrappers
(require 'net-utils)

;; ibuffer is better
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; misc things I use
(require 'strip-whitespace) ; provides strip-trailing-whitespace
(global-set-key (kbd "C-c f w") 'strip-trailing-whitespace)

;; TeX-isms
(autoload 'tex-site "Auctex" nil t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq LaTeX-item-indent 0) ; I like indented items, dammit

;; filladapt
(setq-default filladapt-mode t)
(require 'filladapt)
(add-hook 'text-mode-hook 'turn-on-filladapt-mode)

;; version control
(require 'vc)
(setq vc-command-messages t)
(if +running-xemacs+ (vc-load-vc-hooks)) ; really?

;; cperl mode is preferred, set up for consistency
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent t)

(setq javascript-indent-level 4)

;; tramp mode
(autoload 'tramp "tramp-mode" nil t)
(setq tramp-default-method "ssh")


;; Steve Yegge's improved JavaScript mode
(if (not +running-xemacs+)
    (progn (autoload 'js2-mode "js2" nil t)
           (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
           (setq js2-basic-offset 2)
           (setq js2-use-font-lock-faces t)))
;;
;; Luke Gorrie's Chop -- interactive binary search for a line in a window
;;
(require 'chop)
(global-set-key (kbd "C-c \\") 'chop-move-up)
(global-set-key (kbd "C-c /") 'chop-move-down)

;;
;; escreen, screen-style session in emacs. Noah Friedman
;; http://www.splode.com/~friedman/software/emacs-lisp/src/escreen.el
;;
(if (load "escreen" t) (escreen-install) (message "No escreen available"))

;; hideshow for programming
(load-library "hideshow")
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'cperl-mode-hook      'hs-minor-mode)
(add-hook 'c-mode-hook          'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; font-lock from hell, try seven ways to sunday to make it stick on
;; everything everywhere.
;;
(require 'font-lock)
(setq font-lock-maximum-decoration t)
(setq font-lock-use-colors t)
(setq font-lock-auto-fontify t)

; Emacs is smarter than XEmacs here and has a global-font-lock-mode
(when (not +running-xemacs+)
  (global-font-lock-mode 1))

(defun add-to-hook (hook-name f)
  (unless (and (symbol-value hook-name) (member hook-name f))
    (add-hook (intern hook-name) f)))

;(dolist (hook-name '("c-mode-hook" "emacs-lisp-mode-hook" "dired-mode-hook"
;                     "mail-mode-hook" "ksh-mode-hook" "perl-mode-hook"
;                     "lisp-mode-hook" "html-mode-hook" "sql-mode-hook"))
;  (add-hook (intern hook-name) '(lambda () (font-lock-mode 1))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;
;; M-/ expansion good, hippie-expand better
;;
;; tweak how it tries to fill. I hate the line completion ones
;;
(eval-after-load "dabbrev" '(defalias 'dabbrev-expand 'hippie-expand))

; this is brilliant! An advanced desk calculator
; wrapped up with hippie expand.
(defun mb-try-complete-with-calc-result (arg)
  "Michele Bini's hippie expand desk calc"
  (and
   (not arg) (eolp)
   (save-excursion
     (beginning-of-line)
     (when (and (boundp 'comment-start)
		comment-start)
       (when (looking-at
	      (concat
	       "[ \n\t]*"
	       (regexp-quote comment-start)))
	 (goto-char (match-end 0))
	 (when (looking-at "[^\n\t ]+")
	   (goto-char (match-end 0)))))
     (looking-at ".* \\(\\([;=]\\) +$\\)"))
   (save-match-data
     (require 'calc-ext nil t))
   ;;(require 'calc-aent)
   (let ((start (match-beginning 0))
	 (op (match-string-no-properties 2)))
   (save-excursion
     (goto-char (match-beginning 1))
     (if (re-search-backward (concat "[\n" op "]") start t)
	 (goto-char (match-end 0)) (goto-char start))
     (looking-at (concat " *\\(.*[^ ]\\) +" op "\\( +\\)$"))
     (goto-char (match-end 2))
     (let* ((b (match-beginning 2))
	    (e (match-end 2))
	    (a (match-string-no-properties 1))
	    (r (calc-do-calc-eval a nil nil)))
       (when (string-equal a r)
	 (let ((b (save-excursion
		    (and (search-backward "\n\n" nil t)
			 (match-end 0))))
	       (p (current-buffer))
	       (pos start)
	       (s nil))
	   (setq r
		 (calc-do-calc-eval
		  (with-temp-buffer
		    (insert a)
		    (goto-char (point-min))
		    (while (re-search-forward
			    "[^0-9():!^ \t-][^():!^ \t]*" nil t)
		      (setq s (match-string-no-properties 0))
		      (let ((r
			     (save-match-data
			       (save-excursion
				 (set-buffer p)
				 (goto-char pos)
				 (and
				  ;; TODO: support for line
				  ;; indentation
				  (re-search-backward
				   (concat "^" (regexp-quote s)
					   " =")
				   b t)
				  (progn
				    (end-of-line)
				    (search-backward "=" nil t)
				    (and (looking-at "=\\(.*\\)$")
					 (match-string-no-properties 1))))))))
			(if r (replace-match (concat "(" r ")") t t))))
		    (buffer-substring (point-min) (point-max)))
		  nil nil))))
       (and
	r
	(progn
	  (he-init-string b e)
	  (he-substitute-string (concat " " r))
	  t)))))))

(setq hippie-expand-try-functions-list '(mb-try-complete-with-calc-result
                                         try-expand-all-abbrevs
                                         try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-list
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))
(setq hippie-expand-verbose t) ; note which function used to try

;; bring on my code skeletons
(load
 (concat +homedir+
         (cond (+is-employer-host+ "/.custom/")
               (+running-osx+      "/Library/Application Support/emacsen/")
	       (t "/emacsen/"))
         "skeletons"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; set up slime and lisp
;;
;; note, using SLIME from CVS after refactoring
;;
(when (rel-local-module-enabled-p "slime")

  (require 'clojure-mode)
  (add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

  (setq swank-clojure-jar-path "/Users/lonstein/clojure/clojure/clojure.jar")
  (setq swank-java-path "/usr/bin/java")
  (setq swank-clojure-binary "/Users/lonstein/clojure/clojure.sh")
  (require 'swank-clojure)

;;FIXME
;;  (setq slime-lisp-implementations '((clojure ( "/Users/lonstein/clojure/clojure")) 
;;                                     (sbcl ,(list (cond (+running-osx+ "/opt/local/bin/sbcl")
;;                                                        (+is-employer-host+ "/ms/dist/fsf/PROJ/sbcl/1.0.25/bin/sbcl"))
;;                                                   (t nil)))))

(setq slime-lisp-implementations
      '((sbcl ("/opt/local/bin/sbcl"))
        (clozure ("/Users/lonstein/clozure-1.3/scripts/ccl")) ;FIXME
        (clojure ("/Users/lonstein/clojure/clojure.sh")  :init swank-clojure-init)))

  ;; fixme... localize for platform, etc.
  (require 'slime-autoloads)
  (require 'slime)
  (require 'slime-fancy)
  (require 'slime-banner)
  (require 'slime-asdf)
  (require 'slime-indentation)
  (slime-banner-init)
  (slime-asdf-init)
  (setq slime-complete-symboll*-fancy t)
  (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
  (slime-setup)

  (add-hook 'lisp-mode-hook (lambda () (slime-mode t)
                              (local-set-key "\r" 'newline-and-indent)
                              (setq lisp-indent-function 'common-lisp-indent-function)
                              (setq indent-tabs-mode nil)))

  (setq common-lisp-hyperspec-root
        (cond (+running-osx+ "file:///usr/local/share/HyperSpec-7-0/HyperSpec/")
              (+running-bsd+ "file:///usr/local/share/doc/clisp-hyperspec/HyperSpec/")
              ;(+is-employer-host+ "http://www.lispworks.com/documentation/HyperSpec/")
              (t "http://www.lispworks.com/documentation/HyperSpec/")))

  (when (and common-lisp-hyperspec-root (load "w3m-load" t))
    (progn (defun w3m-browse-url-other-window (url &optional newwin)
             "Thanks to Hakon Alstadheim in slime-devel 20040714"
             (interactive
              (browse-url-interactive-arg "w3m URL: "))
             (let ((pop-up-frames nil))
               (switch-to-buffer-other-window
                (w3m-get-buffer-create "*w3m*"))
               (w3m-browse-url url)))
           (setq browse-url-browser-function
                 (list (cons "^ftp:/.*" (lambda (url &optional nf)
                                          (call-interactively #'find-file-at-point url)))
                       (cons "." #'w3m-browse-url-other-window)))))


  ;
  ; paredit aids structured editing of sexps
  ;
  ;(require 'paredit)
  (load "paredit-beta.el")
  (mapc (lambda (hook) (add-hook hook (lambda () (paredit-mode +1))))
        '(lisp-mode-hook
          emacs-lisp-mode-hook
          scheme-mode-hook
          slime-mode-hook
          slime-repl-mode-hook
          t-mode-hook))
  ;; check this... are these necessary or does the mode hook do it
;; (define-key slime-mode-map (kbd "(") 'paredit-open-parenthesis)
;;   (define-key slime-mode-map (kbd ")") 'paredit-close-parenthesis)
;;   (define-key slime-mode-map (kbd "\"") 'paredit-doublequote)
;;   (define-key slime-mode-map (kbd "\\") 'paredit-backslash)
;;   (define-key slime-mode-map (kbd "RET") 'paredit-newline)
;;   (define-key slime-mode-map (kbd "<return>") 'paredit-newline)
;;   (define-key slime-mode-map (kbd "C-d") 'paredit-forward-delete)
;;   (define-key slime-mode-map (kbd "C-M-k") 'paredit-kill)
;;   (define-key slime-mode-map (kbd "C-'") 'paredit-splice-sexp)
;;   (define-key slime-mode-map (kbd "C-M-l") 'paredit-recentre-on-sexp)

   (define-key slime-mode-map (kbd "C-,") 'paredit-backward-slurp-sexp)
   (define-key slime-mode-map (kbd "C-.") 'paredit-forward-slurp-sexp)
   (define-key slime-mode-map (kbd "C-<") 'paredit-backward-barf-sexp)
   (define-key slime-mode-map (kbd "C->") 'paredit-forward-barf-sexp)

   (define-key slime-repl-mode-map (kbd "C-,") 'paredit-backward-slurp-sexp)
   (define-key slime-repl-mode-map (kbd "C-.") 'paredit-forward-slurp-sexp)
   (define-key slime-repl-mode-map (kbd "C-<") 'paredit-backward-barf-sexp)
   (define-key slime-repl-mode-map (kbd "C->") 'paredit-forward-barf-sexp)

;;   (define-key slime-mode-map (kbd "C-j") 'newline)
;;   (define-key slime-mode-map (kbd "C-t") 'transpose-sexps)
;;   (define-key slime-mode-map (kbd "C-M-t") 'transpose-chars)
;;   (define-key slime-mode-map (kbd "C-n") 'forward-sexp)
;;   (define-key slime-mode-map (kbd "C-/") 'backward-up-list)
;;   (define-key slime-mode-map (kbd "C-=") 'down-list)
;;   (define-key slime-mode-map (kbd "TAB") 'slime-indent-and-complete-symbol)
;;   (define-key slime-mode-map (kbd "C-c TAB") 'slime-complete-form)
;;   (define-key slime-mode-map "\C-c;" 'slime-insert-balanced-comments)
;;   (define-key slime-mode-map "\C-c\M-;" 'slime-remove-balanced-comments)

  (message "... set up slime..."))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Org Mode, proving to be better than planner
;;
(when (rel-local-module-enabled-p "org")
  (require 'org-install)
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  (eval-after-load "org"
    '(progn
      (define-prefix-command 'org-todo-state-map)
      (define-key org-mode-map "\C-cx" 'org-todo-state-map)
      (define-key org-todo-state-map "x" #'(lambda nil (interactive) (org-todo "CANCELLED"))) 
      (define-key org-todo-state-map "d" #'(lambda nil (interactive) (org-todo "DONE"))) 
      (define-key org-todo-state-map "f" #'(lambda nil (interactive) (org-todo "DEFERRED"))) 
      (define-key org-todo-state-map "l" #'(lambda nil (interactive) (org-todo "DELEGATED"))) 
      (define-key org-todo-state-map "r" #'(lambda nil (interactive) (org-todo "RESCHEDULED"))) 
      (define-key org-todo-state-map "s" #'(lambda nil (interactive) (org-todo "STARTED"))) 
      (define-key org-todo-state-map "w" #'(lambda nil (interactive) (org-todo "WAITING"))) 
      (define-key org-todo-state-map "o" #'(lambda nil (interactive) (org-todo "REOPENED"))) 

      (eval-after-load "org-agenda"
        '(progn 
           (define-key org-agenda-mode-map "\C-n" 'next-line)
           (define-key org-agenda-keymap "\C-n" 'next-line)
           (define-key org-agenda-mode-map "\C-p" 'previous-line)
           (define-key org-agenda-keymap "\C-p" 'previous-line)))

      (require 'remember)
      (require 'table)

      (add-hook 'remember-mode-hook 'org-remember-apply-template)
      
      (setf
       org-agenda-files (quote ("~/Documents/todo/todo.org"))
       org-default-notes-file "~/Documents/todo/notes.org"
       org-agenda-ndays 7
       org-deadline-warning-days 14
       org-agenda-show-all-dates t
       org-agenda-skip-deadline-if-done t
       org-agenda-skip-scheduled-if-done t
       org-agenda-include-diary t
       org-agenda-start-on-weekday nil
       org-reverse-note-order t
       org-fast-tag-selection-single-key (quote expert)
       org-remember-store-without-prompt t
       org-clock-persist t
       org-clock-persist-file ".org-clock-save.el"
       org-clock-in-resume t
       org-clock-out-when-done t
       org-clock-out-removes-zero-time-clocks t
       org-clock-in-switch-to-state "STARTED"
       org-clock-out-when-done t
       org-log-done '(state))

      (setf org-agenda-custom-commands
            (quote (("d" todo "DELEGATED" nil)
                    ("c" todo "DONE|DEFERRED|CANCELLED" nil)
                    ("w" todo "WAITING" nil)
                    ("W" agenda "" ((org-agenda-ndays 21)))
                    ("A" agenda ""
                     ((org-agenda-skip-function
                       (lambda nil
                         (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]")))
                      (org-agenda-ndays 1)
                      (org-agenda-overriding-header "Today's Priority #A tasks: ")))
                    ("u" alltodo ""
                     ((org-agenda-skip-function
                       (lambda nil
                         (org-agenda-skip-entry-if (quote scheduled) (quote deadline)
                                                   (quote regexp) "<[^>\n]+>")))
                      (org-agenda-overriding-header "Unscheduled TODO entries: "))))))

      (setf org-remember-templates
            (quote (("Todo" ?t "* TODO %?\n  %u" "~/Documents/todo/todo.org" "Tasks")
                    ("Note" ?n "* %u %?" "~/Documents/todo/notes.org" "Notes"))))
      (setf remember-annotation-functions (quote (org-remember-annotation))
            remember-handler-functions (quote (org-remember-handler)))
      
      (global-set-key (kbd "C-c o l") 'org-store-link) 
      (global-set-key (kbd "C-c o a") 'org-agenda) 
      (global-set-key (kbd "C-c o r") 'remember)))

  (message "... set up org-mode..."))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; custom key bindings
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; OSX map the extra keys for something useful
;;
(when +running-osx+
  (setq mac-function-modifer 'super)
  (setq mac-option-modifier 'hyper)
  (setq mac-command-key-is-meta t))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; Function keys should do something too
;;
(global-set-key [f1] (lambda () (interactive) (manual-entry (current-word))))
(global-set-key [f2] 'undo)
(global-set-key [M-f2] 'redo)
(global-set-key [f3] 'goto-line)
(global-set-key [f4] 'comment-line-or-region)
(global-set-key [f5] 'uncomment-line-or-region)
(global-set-key [f6] 'switch-to-previous-buffer)
(global-set-key [f7] 'switch-to-next-buffer)
(global-set-key [f10] 'next-error)

;;
;; Finger memory, I need these to jump around
;;
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cG" 'goto-char)
(global-set-key "\M-g"  'goto-line)

;; smart delete, kill region or char
(global-set-key "\C-d" 'smart-delete)

;; comment/uncomment so useful, I set it twice
(global-set-key (kbd "C-c c") 'comment-line-or-region)
(global-set-key (kbd "C-c u") 'uncomment-line-or-region)
(global-set-key (kbd "C-S-v") 'scroll-down)
;;

(global-set-key "%" 'match-paren) ; vi-ism lives
(global-set-key (kbd "C-x I")   'insert-buffer)
(global-set-key (kbd "C-c f t") 'tidy-buffer)
(global-set-key (kbd "C-c f p") 'perltidy-buffer)
(global-set-key (kbd "C-c f f") 'rel-autoformat)
(global-set-key (kbd "C-c f q") 'rel-autoformat-quote)
(global-set-key (kbd "C-c f c") 'align-cols)
(global-set-key (kbd "C-x !") 'rel-whack)
(define-key ctl-x-map "F" 'find-function)
(define-key ctl-x-map "V" 'find-variable)
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; sorting variously, mnemonic is "C-c sort on <kind of sort>"
(global-set-key (kbd "C-c s o c")   'sort-columns)
(global-set-key (kbd "C-c s o f")   'sort-fields)
(global-set-key (kbd "C-c s o l")   'sort-lines)
(global-set-key (kbd "C-c s o n f") 'sort-numeric-fields)
(global-set-key (kbd "C-c s o r f") 'sort-regexp-fields)
(global-set-key (kbd "C-c s o r r") 'reverse-region)


;; Steve Yegge's advice
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;(global-set-key "\C-w" 'backward-kill-word)
;(global-set-key "\C-x\C-k" 'kill-region)
;(global-set-key "\C-c\C-k" 'kill-region)

(message "... keybindings...")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;
;; misc
;;
(fset 'yes-or-no-p 'y-or-n-p)

;; OSX, need this on Carbon Emacs
(when +running-osx+ 
    (progn (set-cursor-color "white")
           (setq x-select-enable-clipboard t)))

(setq-default indent-tabs-mode nil)

(setq abbrev-file-name (concat +local-elisp-subpath+ "/abbrev_defs.el"))

;; more personal customizations
(setq column-number-mode t                  ; show columns
      default-abbrev-mode t                 ; abbrev everywhere
      default-indent-tabs-mode nil          ; no tabs, always spaces
      history-length 100
      inhibit-startup-message t             ; don't annoy me at startup
      kill-whole-line t                     ; I like kill to end of line
      line-number-mode t                    ; show line numbers
      make-backup-files nil                 ; I hate finding tilde files
      minibuffer-max-depth nil              ; recursive/multiple minibufs
      paren-blink-interval 0.30
      pending-delete-mode t                 ; delete region on overtype
      progress-feedback-use-echo-area t
      remote-shell-program  "ssh"
      require-final-newline t               ; text files end in newline, thanks
      save-abbrevs t                        ; autosave abbrevs on exit
;      skeleton-pair t
      toolbar-visible-p nil
      uniquify-buffer-name-style 'forward   ; unique buffer names w/dir
      user-full-name "Ross Lonstein"
      user-mail-address "rlonstein@pobox.com"
      visible-bell t                        ; no beeping
      yank-excluded-properties t            ; don't paste properties
      transient-mark-mode t
      delete-selection-mode t
      apropos-do-all t
)

(when +running-osx+
  (setq sql-postgres-program "/Library/PostgreSQL/8.3/bin/psql"))

;
; Set GNUs particulars
;
(setq nntp-maximum-request 10)
(setq nntp-connection-timeout 5)
(setq nntp-warn-about-losing-connection t)
(setq gnus-summary-same-subject "")
(setq gnus-sum-thread-tree-root "")
(setq gnus-sum-thread-tree-single-indent "")
(setq gnus-sum-thread-tree-leaf-with-other "+-> ")
(setq gnus-sum-thread-tree-vertical "|")
(setq gnus-sum-thread-tree-single-leaf "`-> ")



(icomplete-mode 99)

; No scrollbar, no menu, no tools. Screen real estate is precious
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(quietly-read-abbrev-file) ; reads the abbreviations file on startup

(auto-compression-mode 1)                   ; (de)compress on the fly

;
; from Stefan Kamphausen on emacswiki, automatically
; set executable bit on saved files from buffers with
; a hashbang on the first line.
;
(add-hook 'after-save-hook
          #'(lambda ()
              (and (save-excursion
                     (save-restriction
                       (widen)
                       (goto-char (point-min))
                       (save-match-data
                         (looking-at "^#!"))))
                   (not (file-executable-p buffer-file-name))
                   (shell-command (concat "chmod u+x " (shell-quote-argument buffer-file-name)))
                   (message
                    (concat "Saved as script: " buffer-file-name)))))



;;
;; Phil Moore's suggestion for annoying suspends & my addition for
;; equally annoying exits
;;
(defun my-suspend-emacs ()
  (interactive)
  (if (yes-or-no-p "Do you want to suspend ")
      (suspend-emacs)))

(defun my-exit-emacs ()
  (interactive)
  (if (yes-or-no-p "Are you sure want to exit ")
      (save-buffers-kill-emacs)))

(global-set-key "\C-z"     'my-suspend-emacs)
(global-set-key "\C-x\C-z" 'my-suspend-emacs)
(global-set-key "\C-x\C-c" 'my-exit-emacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; Drew Adams's suggestion
;;
(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

;;
;; thanks to Edward O'Conner for these
;;
(when (locate-library "boxquote")
  (defvar ted-boxquote-map (make-sparse-keymap))
  (global-set-key (kbd "C-c q") ted-boxquote-map)
  (mapc (lambda (cons)
          (let ((command (car cons))
                (key (cdr cons)))
            (autoload command "boxquote" nil t)
            (define-key ted-boxquote-map key command)))
        '((boxquote-region            . "r")
          (boxquote-buffer            . "b")
          (boxquote-insert-file       . "i")
          (boxquote-yank              . "y")
          (boxquote-defun             . "F")
          (boxquote-paragraph         . "p")
          (boxquote-describe-function . "f")
          (boxquote-describe-variable . "v")
          (boxquote-describe-key      . "k")
          (boxquote-kill              . "K")
          (boxquote-unbox             . "u"))))


;;;
;;; This improved skeleton pair from emacswiki, possibly Alex Schroeder
;;;
;
; maybe investigate tinypair which appears to have smarter pairing
; and is more portable between Xemacs and Emacs
;

(setq skeleton-end-hook nil) ; do not insert newline after skeleton insertation

(defvar myskeleton-pairs
  '((?\" . (?\" ?\" ?\" _ ?\"))
    (?\( . (?\( ?\) ?\( _ ?\)))
    (?\[ . (?\[ ?\] ?\[ _ ?\]))
    (?\{ . (?\{ ?\} ?\{ _ ?\}))
    (?\' . (?\' ?\' ?\' _ ?\'))
    (?\` . (?\` ?\' ?\` _ ?\')))
  "Table of skeletons pairs. Maybe local to buffer.")

(defun myskeleton-pair-insert (arg)
  "Inserts pairs."
  (interactive "*P")

  (let* ((chr (event-key last-command-event))
	 (pair (assoc chr myskeleton-pairs)))
    (if (null pair)
	(message "Character %s is not in `myskeleton-pairs'.")
      (cond ((and (listp arg) (not (null arg)))
	     ;; Surround current word with
	     (save-excursion
	       (when (not (looking-at "\\<"))
		 (backward-word 1))
	       (when (looking-at "\\sw")
		 (let ((pl 0)
		       (r (prefix-numeric-value arg)))
		   (while (> r 1)
		     (setq r (/ r 4))
		     (setq pl (1+ pl)))

		   (insert (make-string pl (nth 0 (cdr pair))))
		   (forward-word 1)
		   (insert (make-string pl (nth 1 (cdr pair))))))))
	    (t (mapcar (lambda (not-used)
			 (skeleton-insert
			  (cons nil (cdddr pair))))
		       (make-list (prefix-numeric-value arg) 'not-used)))))))

;; pairing for C-mode
(defun my-skelpair-cmode ()
  (make-local-variable 'myskeleton-pairs)
  (setq myskeleton-pairs (copy-alist myskeleton-pairs))
  (remassoc ?\{ myskeleton-pairs)
  (add-to-list 'myskeleton-pairs '(?{ . (?{ ?} ?{ '(progn (indent-according-to-mode) nil) \n _ \n ?} '(progn (indent-according-to-mode) nil)))))

;(add-hook 'c-mode-hook 'my-skelpair-cmode)

(define-key global-map (kbd "C-M-{") 'backward-paragraph)
(define-key global-map (kbd "C-M-}") 'forward-paragraph)
(define-key global-map (kbd "C-M-'") 'abbrev-prefix-mark)

(define-key global-map (kbd "M-\"") 'myskeleton-pair-insert)
(define-key global-map (kbd "M-`")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-'")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-{")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-(")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-[")  'myskeleton-pair-insert) ; brokeness on linux xterm?

;;
;; from c2.com wiki, GreatEmacsLispSnippets...
;;
(define-key global-map "\C-c\C-sf"
    '(lambda () (interactive nil) (message "%s" (buffer-file-name))))

(defun my-insert-timeofday ()
  (interactive "*")
  (insert (format-time-string "%a, %d %b %y %H:%M\n")))

;;
;; Drew Adams amazing, hairy completion stuff, too early to say if I
;; like it...
;;
(if (rel-local-module-enabled-p "icicles")
    (require 'icicles))

;;
;; conveniences from Alex Schroeder
;;
(defun url-encode (str)
  "URL-encode STR."
  (interactive "sURL-encode: ")
  (message "%s" (url-hexify-string str)))
;(defalias 'url-escape 'url-encode)

(defun url-decode (str)
  "URL-decode STR."
  (interactive "sURL-decode: ")
  (message "%s" (decode-coding-string
		 (url-unhex-string str)
		 'utf-8)))


;;
;; Joel Holveck, use available spellcheck and set flyspell mode
;;
(defun have-executable (filename)
  (some #'(lambda (dir)
            (file-executable-p
             (concat (file-name-as-directory dir) filename)))
        exec-path))

(cond
 ((have-executable "aspell")
  (setq have-spell 'aspell)
  (setq ispell-program-name "aspell"))
 ((have-executable "ispell")
  (setq have-spell 'ispell)
  (setq ispell-program-name "ispell"))
 (t
  (setq have-spell nil)))

; this might get annoying...
(when have-spell  (add-hook 'text-mode-hook 'flyspell-mode))

;;
;; Joel Holveck, ssh via comint buffer
;;
(defun ssh (host)
  "Open a secure network login connection to host named HOST (a string).
    Communication with HOST is recorded in a buffer `*ssh-HOST*'.
    Normally input is edited in Emacs and sent a line at a time."
  (interactive "sOpen ssh connection to host: ")
  (require 'telnet)
  (require 'shell)
  (let ((name (concat "ssh-" host )))
    (pop-to-buffer (make-comint name remote-shell-program nil host))
    (set-process-filter (get-process name) 'telnet-initial-filter)
    (telnet-mode)
    (setq telnet-count -16)))

;;
;; thanks to Dave Pearson
;;
;; added random seed
;;
(defun totd ()
  (interactive)
  (random t) ;
  (with-output-to-temp-buffer "*Tip of the day*"
    (let* ((commands (loop for s being the symbols
                           when (commandp s) collect s))
           (command (nth (random (length commands)) commands)))
      (princ
       (concat "Your tip for the day is:\n========================\n\n"
               (describe-function command)
               "\n\nInvoke with:\n\n"
               (with-temp-buffer
                 (where-is command t)
                 (buffer-string)))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Custom color and faces, minimalist light fg/dark bg stuff
;;
(load-file (localize-load-path "/emacs-color-theme.el"))
(my-color-theme)
(message "... face customization...")

;; and a local customization
(defun font-existp (font)
  (if (null (x-list-fonts font))
      nil t))

(if +running-osx+
    (let ((preferred-font "-apple-envy code r-medium-r-normal--13-130-72-72-m-130-iso10646-1"))
      (when (font-existp preferred-font)
        (progn
          (set-face-font 'default preferred-font)
          (message "... set OSX default face...")))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when +running-xemacs+ (gnuserv-start))

(garbage-collect)

;(setq debug-on-error nil)

(message "Completed load of Ross's customizations.")

; educate me
(totd)

;;;
;;; END OF MY CUSTOMIZATIONS
;;;
