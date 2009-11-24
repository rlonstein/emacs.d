(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(setq swank-clojure-jar-path "/Users/lonstein/clojure/clojure/clojure.jar")
(setq swank-java-path "/usr/bin/java")
(setq swank-clojure-binary "/Users/lonstein/clojure/clojure.sh")
(require 'swank-clojure)
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
(define-key slime-mode-map (kbd "C-,") 'paredit-backward-slurp-sexp)
(define-key slime-mode-map (kbd "C-.") 'paredit-forward-slurp-sexp)
(define-key slime-mode-map (kbd "C-<") 'paredit-backward-barf-sexp)
(define-key slime-mode-map (kbd "C->") 'paredit-forward-barf-sexp)

(define-key slime-repl-mode-map (kbd "C-,") 'paredit-backward-slurp-sexp)
(define-key slime-repl-mode-map (kbd "C-.") 'paredit-forward-slurp-sexp)
(define-key slime-repl-mode-map (kbd "C-<") 'paredit-backward-barf-sexp)
(define-key slime-repl-mode-map (kbd "C->") 'paredit-forward-barf-sexp)

(message "... set up slime...")
