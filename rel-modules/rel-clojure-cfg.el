;;;
;;; Clojure: run externally and connect, swank-clojure.el is deprecated
;;; http://dev.clojure.org/display/doc/Getting+Started+with+Emacs
;;;
(autoload 'clojure-mode "clojure-mode" "Major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(require 'paredit)

(add-hook 'clojure-mode-hook (lambda () 
                               (paredit-mode t)
                               (slime-mode t)
                               (turn-on-eldoc-mode)
                               (unload-feature 'slime-autodoc t)  
                               (define-key clojure-mode-map "{" 'paredit-open-brace)
			       (define-key clojure-mode-map "}" 'paredit-close-brace)))

(message "... set up clojure...")

(provide 'rel-clojure-cfg)
