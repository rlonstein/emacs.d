(message "Starting load of Ross's customizations...")

(setq debug-on-error t) ; disabled at end

(setq message-log-max 1000)

;;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;;; straight.el manages packages...
(straight-use-package 'use-package)
(straight-use-package 'exec-path-from-shell)
(straight-use-package 'company)
(straight-use-package 'counsel)
(straight-use-package 'org)
(require 'org) ;; avoid conflict with built-in, load early
(use-package ox-odt
  ;; authoratative export to ODT works where upstream one doesn't
  :straight (org-mode-ox-odt
	     :host github
	     :repo "kjambunathan/org-mode-ox-odt"
	     :files ("lisp/ox-odt.el"
                     "lisp/odt.el"
		     "etc"
		     "docs"
		     "contrib/odt/LibreOffice")))
(straight-use-package 'ox-gfm)
(straight-use-package 'magit)
(straight-use-package 'projectile)
(straight-use-package 'paredit)
(straight-use-package 'eldoc)
(straight-use-package 'ag)
(straight-use-package 'yaml)
(straight-use-package 'yasnippet)
(straight-use-package 'flycheck)
(straight-use-package 'flymake)
(straight-use-package 'filladapt)
(straight-use-package 'marginalia)
(straight-use-package 'urlenc)
(straight-use-package 'auctex)
(straight-use-package 'semi)
(straight-use-package 'ecb)

;;; theme
(straight-use-package 'darcula-theme)

;;; modes and language helpers
(straight-use-package 'mmm-mode)
(straight-use-package 'json-mode)
(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)
(straight-use-package 'yaml-mode)
(straight-use-package 'rust-mode)
(straight-use-package '(rustic
			:type git
			:host github
			:repo "brotzeit/rustic"))
(straight-use-package 'cargo)
(straight-use-package 'cargo-mode)
(straight-use-package 'python-mode)
(straight-use-package 'racket-mode)
(straight-use-package 'go-eldoc)
(straight-use-package 'slime)
(straight-use-package 'd-mode)
(straight-use-package 'realgud)
(straight-use-package 'company-irony)
(straight-use-package 'company-shell)
(straight-use-package 'company-ctags)
(straight-use-package 'company-go)
(straight-use-package 'company-irony)
(straight-use-package 'dfmt)


;;; flymake/check languages
(straight-use-package 'flycheck-pyflakes)
(straight-use-package 'flycheck-pycheckers)
(straight-use-package 'flymake-go)
(straight-use-package 'flycheck-rust)
(straight-use-package 'flycheck-irony)
(straight-use-package 'flymake)


;;;
;;; my customizations...
;;;

(exec-path-from-shell-initialize)

(defun dot-emacs (relative-path)
  "Return the full path of a file in the user's emacs directory."
  (expand-file-name (concat user-emacs-directory relative-path)))

(load (dot-emacs "./01-env-local.el"))
(load (dot-emacs "./02-compat.el"))
(load (dot-emacs "./03-helpers.el"))
(load (dot-emacs "./05-keybindings.el"))

(add-to-load-path (concat +local-elisp-subpath+ "/misc"))
(add-to-load-path (concat +local-elisp-subpath+ "/rel-modules"))

(require 'xemacsism)
(require 'rel-lib)
(require 'rel-conveniences)
(require 'rel-borrowed-snippets)
(require 'rel-ivy)
(require 'rel-org-config)
(require 'rel-rust)

(require 'filladapt)
(require 'post)
(setq auto-mode-alist
      (cons '("/tmp/mutt.*$" . post-mode) auto-mode-alist))
(add-hook 'post-mode-hook 'turn-on-filladapt-mode)

;; footnotes
(autoload 'footnote-mode "footnote" nil t)
(add-hook 'text-mode-hook 'footnote-mode)
(add-hook 'post-mode-hook 'footnote-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; misc things I use
;;;
(require 'company)
;;(add-hook after-init-hook 'global-company-mode)
(global-company-mode 1)

(require 'ag)
(setq ag-group-matches nil)

(require 'strip-whitespace)
(global-set-key (kbd "C-c f w") 'strip-trailing-whitespace)

;; magit is essential
(require 'magit)
(global-set-key (kbd "C-c s s") 'magit-status)
(setq magit-revert-item-confirm t)

;; yasnippet
(with-eval-after-load 'yasnippet
  '(yas-global-mode 1))

;; Michele Bini's amazing calc
(load "mb-calc")

;; ibuffer is better
(autoload 'ibuffer "ibuffer" "List Buffers." t)
(global-set-key (kbd "C-x C-b") 'buffer)
(setq ibuffer-expert t)
(add-hook 'ibuffer-mode-hook '(lambda () (ibuffer-auto-mode 1)))

;; Luke Gorrie's Chop -- interactive binary search for a line in a window
(require 'chop)
(global-set-key (kbd "C-c \\") 'chop-move-up)
(global-set-key (kbd "C-c /") 'chop-move-down)

;; smarter buffer naming
(if (load "uniquify" t)
    (progn
      (setq uniquify-buffer-name-style 'post-forward)
      (load "disbufnam" t)
      (message "configured uniquify"))
  (message "failed to load uniquify"))

;; I hate dired but use it anyway
(require 'dired)
(require 'ls-lisp) ;; because all the world is not gnulinux
(setq ls-lisp-use-insert-directory-program nil)
(setq ls-lisp-dirs-first t)

;;
(require 'net-utils)

;;
(require 'vc)
(setq vc-command-messages t)

;; cperl mode is preferred, set up for consistency
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent t)

;;
(setq javascript-indent-level 4)

;; tramp mode
(autoload 'tramp "tramp-mode" nil t)
(setq tramp-default-method "ssh")

(load-library "hideshow")
(dolist (modehook (list 'java-mode-hook 'cperl-mode-hook 'c-mode-hook 'ruby-mode-hook ))
  (add-hook modehook 'hs-minor-mode))

;; paredit for structured editing of sexps
;; and eldoc for hints
(require 'paredit)
(dolist-with-progress-reporter
    (hook '(lisp-mode-hook
            lisp-interaction-mode-hook
            ielm-mode-hook
            emacs-lisp-mode-hook
            scheme-mode-hook
            slime-mode-hook
            slime-repl-mode-hook))
    "Applying lisp-related hooks..."
    (lambda (hook)
      (add-hook hook 'paredit-mode)
      (add-hook hook 'turn-on-eldoc-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; font-lock from hell, try seven ways to sunday to make it stick on
;; everything everywhere.
;;

(require 'font-lock)
(setq font-lock-maximum-decoration t)
(setq font-lock-use-colors t)
(setq font-lock-auto-fontify t)
(setq font-lock-verbose nil)
(global-font-lock-mode 1)

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

(fset 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)

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
 user-mail-address "ross@lonsteins.com"
 visible-bell t                        ; no beeping
 yank-excluded-properties t            ; don't paste properties
 transient-mark-mode t
 delete-selection-mode t
 apropos-do-all t)

(blink-cursor-mode 1)

; No scrollbar, no menu, no tools. Screen real estate is precious
;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))

(auto-compression-mode 1)                   ; (de)compress on the fly

(define-key global-map (kbd "C-M-{") 'backward-paragraph)
(define-key global-map (kbd "C-M-}") 'forward-paragraph)

(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("79586dc4eb374231af28bbc36ba0880ed8e270249b07f814b0e6555bdcb71fab" "aa6888e4461113e950c43924e583c537005864322629d3515cdd7d4162de7b68" default))
 '(delete-selection-mode nil)
 '(show-paren-mode t))

;(require 'rel-org-config)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka Term Slab" :foundry "UKWN" :slant normal :weight semi-bold :height 120 :width normal)))))

;;
;; Indent case label from switch on C modes
;;
(setq c-default-style "stroustrup"
      c-basic-offset 2)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-intro '+)

(if (display-graphic-p)
    (progn 
      (require 'darcula-theme)
      (load-theme 'darcula t)))

(setenv "PATH" (concat "/home/lontein/local/bin:" (getenv "PATH")))
(setq exec-path (append exec-path '("/home/lonstein/local/bin")))

;;; and we're done...
(garbage-collect)

(when debug-on-error
  (setq debug-on-error nil))

(message "Completed load of Ross's customizations.")
