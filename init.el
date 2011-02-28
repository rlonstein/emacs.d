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
(defconst +running-xemacs+  (or (featurep 'xemacs) (string-match "XEmacs\\|Lucid" emacs-version)))
(defconst +running-osx+     (equal 'darwin system-type))
(defconst +running-carbon-emacs+ (featurep 'mac-carbon))
(defconst +running-windows+ (equal 'windows system-type))
(defconst +running-bsd+     (equal 'berkeley-unix system-type))
(defconst +running-linux+   (equal 'gnu/linux system-type))
(defconst +is-employer-host+ (cond
			    ((file-directory-p (expand-file-name "/ms/dev/")) t)
			    (+running-osx+ nil)
			    (t nil)))
 
(defconst +homedir+ (expand-file-name "~")) ; there's no place like $HOME 
(defconst +perl+ 
  (cond (+is-employer-host+ "/ms/dist/perl5/bin/perl5.8")
        (+running-osx+ "/opt/local/bin/perl")
        (t "perl")))
(defconst +local-elisp-subpath+
  (concat +homedir+ "/"
          (cond (+is-employer-host+
                 (if +running-windows+ "elisp") "/.custom/elisp")
                ((or +running-bsd+ +running-osx+ +running-linux+) ".emacs.d")
                (t                  "emacsen"))))

(defconst +init-file-path+ (file-name-directory user-init-file))

(defvar *is-clbuild* nil) ; toggle in clbuild/.start-slime.el

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun add-to-load-path (path-string)
  (message (format "Passed %S..." path-string))
  (if (stringp path-string)
      (when (file-exists-p path-string)
        (message (format "Adding %S to load-path..." path-string))
        (add-to-list 'load-path (expand-file-name path-string)))))

(add-to-load-path +init-file-path+)

(let ((my-path-list (cond (+is-employer-host+ '("~/.emacs.d/"
                                                "~/.emacs.d/misc"
                                                "~/.emacs.d/modules/"
						"~/.emacs.d/modules/slime"
						"~/.emacs.d/modules/remember"
                                                "~/.emacs.d/modules/magit"
						"~/.emacs.d/modules/org/lisp"
						"~/.emacs.d/modules/org/contrib/lisp"
                                                "~/.emacs.d/modules/color-theme"))
			  (+running-osx+ '("/Users/lonstein/.emacs.d/misc"
					   "/Users/lonstein/.emacs.d/modules"
					   "/Users/lonstein/.emacs.d/modules/slime"
					   "/Users/lonstein/.emacs.d/modules/slime/contrib"
					   "/Users/lonstein/.emacs.d/modules/remember"
                                           "/Users/lonstein/.emacs.d/modules/magit"
					   "/Users/lonstein/.emacs.d/modules/org/lisp"
					   "/Users/lonstein/.emacs.d/modules/org/contrib/lisp"
                                           "/Users/lonstein/.emacs.d/modules/yasnippet"
                                           "/Users/lonstein/.emacs.d/rel-modules"
					   "/opt/local/share/emacs/site-lisp/w3m"))
                       (+running-windows+ '("C:\elisp"
                                          "C:\elisp\misc"
                                          "C:\elisp\sourceforge"
                                          "C:\elisp\packages\remember"))
                       (t '("~/emacsen"
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
;; some useful local functions, moved to their own file
;;
(message "... defining local functions and customizations...")
(load-file (concat +local-elisp-subpath+ "/misc/lazycat.el"))



;; my conveniences
(require 'rel-lib)
(require 'rel-conveniences)
(require 'rel-borrowed-snippets)

;; Org Mode, proving to be better than planner
(require 'rel-org-config)

;; drag in a few handy things from XEmacs
(require 'xemacsism)

;; quickurl
(require 'quickurl)

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
(require 'gnuplot)

;; TeX-isms

;;(when (and +running-osx+ (>= 23 emacs-major-version))
  ; Oddly, macports emacs.app doesn't find the auctex port. Tell it where to look.
;;  (add-to-load-path "/Applications/MacPorts/Emacs.app/Contents/Resources/lisp/auctex"))

(load "tex-site" t)
(setq TeX-auto-save t
      TeX-parse-self t
      TeX-PDF-mode t
      TeX-shell "/bin/bash")

(setq-default TeX-master nil)
(setq LaTeX-item-indent 0) ; I like indented items, dammit

;; filladapt
(setq-default filladapt-mode t)
(require 'filladapt)
(add-hook 'text-mode-hook 'turn-on-filladapt-mode)

;; version control
(require 'vc)
(setq vc-command-messages t)

;; ... and a better git interface...
(require 'magit)
(setq magit-git-executable
      (cond (+is-employer-host+ "git")
            (+running-osx+ "/opt/local/bin/git")
            (t "git")))
(setq magit-revert-item-confirm t)

(global-set-key (kbd "C-c s s") 'magit-status)

;; cperl mode is preferred, set up for consistency
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent t)

(setq javascript-indent-level 4)

;; align-cols
(require 'align)
(global-set-key (kbd "C-c f c") 'align-cols)

;; tramp mode
(autoload 'tramp "tramp-mode" nil t)
(setq tramp-default-method "ssh")

;; Michele Bini's amazing calc
(load "mb-calc")

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

;
; paredit aids structured editing of sexps
;
;(require 'paredit)
(load "paredit-beta.el")
(mapc (lambda (hook) (add-hook hook (lambda () (paredit-mode +1))))
      '(lisp-mode-hook
        lisp-interaction-mode-hook
        ielm-mode-hook
        emacs-lisp-mode-hook
        scheme-mode-hook
        slime-mode-hook
        slime-repl-mode-hook
        t-mode-hook))

; slime
(unless *is-clbuild* (require 'rel-slime-cfg))

; and ElDoc for hints
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; snippets ala bbedit, easier than skeletons
(require 'yasnippet)
(yas/initialize)
(yas/load-directory
 (concat +local-elisp-subpath+ "/modules/yasnippet/snippets"))


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
(global-set-key [f3] 'org-agenda)
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
(setq
 auto-save-interval 1024
 auto-save-timeout 120
 column-number-mode t                  ; show columns
; default-abbrev-mode t                 ; abbrev everywhere
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
 apropos-do-all t)

(blink-cursor-mode 1)

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


(require 'icomplete)
(icomplete-mode 1)


; No scrollbar, no menu, no tools. Screen real estate is precious
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode nil))
(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))

;(quietly-read-abbrev-file) ; reads the abbreviations file on startup

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
;(define-key global-map (kbd "C-M-'") 'abbrev-prefix-mark)

(define-key global-map (kbd "M-\"") 'myskeleton-pair-insert)
(define-key global-map (kbd "M-`")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-'")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-{")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-(")  'myskeleton-pair-insert)
(define-key global-map (kbd "M-[")  'myskeleton-pair-insert) ; brokeness on linux xterm?



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

(if (and +running-osx+ (not (null window-system)))
    (let ((preferred-font
           (if +running-carbon-emacs+ "-apple-envy code r-medium-r-normal--13-130-72-72-m-130-iso10646-1"
             "-apple-Envy_Code_R-medium-normal-normal-*-13-*-*-*-m-0-fontset-auto7")))
      (when (font-existp preferred-font)
        (progn
          (set-face-font 'default preferred-font)
          (message "... set OSX default face to [%s]..." preferred-font)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(if +running-xemacs+ (gnuserv-start) (server-start))

(garbage-collect)

(when debug-on-error
  (setq debug-on-error nil))

(message "Completed load of Ross's customizations.")

(put 'narrow-to-region 'disabled nil)

; educate me
(totd)

