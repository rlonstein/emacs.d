;;
;; (c) 2009, R. Lonstein
;; http://creativecommons.org/licenses/MIT/
;;

;(require 'clojure-mode)
;(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
;(setq swank-clojure-jar-path "/Users/lonstein/clojure/clojure/clojure.jar")
;(setq swank-java-path "/usr/bin/java")
;(setq swank-clojure-binary "/Users/lonstein/clojure/clojure.sh")
;(require 'swank-clojure)

(setq slime-lisp-implementations
      (cond (+running-osx+
             '((sbcl ("/opt/local/bin/sbcl"))
               (clozure ("/Users/lonstein/clozure-1.4/scripts/ccl"))
               (ecl ("/opt/local/bin/ecl"))))
            (+running-bsd+
             '((sbcl ("/usr/local/bin/sbcl"))
               (ecl ("/usr/local/bin/ecl"))))
            (+running-linux+
             '((sbcl ("/usr/bin/sbcl"))))
            (t '((sbcl ("sbcl"))))))
;        (clojure ("/Users/lonstein/clojure/clojure.sh")  :init swank-clojure-init)

(require 'slime-autoloads)
(require 'slime)
(require 'slime-banner)
(require 'slime-indentation)

; fancy brings in repl, autodoc, c-p-c, editing-commands, fancy-inspector,
;   fuzzy, highlight-edits, presentations, scratch, xref-browser, references,
;   mdot-fu, package-fu and fontifying-fu
(require 'slime-fancy)

(slime-banner-init)
(setq slime-complete-symboll*-fancy t)
(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)

(slime-setup '(slime-fancy))

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

(message "... set up slime...")
