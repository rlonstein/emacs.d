;;;
;;; Clojure: run externally and connect, swank-clojure.el is deprecated
;;; http://dev.clojure.org/display/doc/Getting+Started+with+Emacs
;;;
(autoload 'clojure-mode "clojure-mode" "Major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))

(require 'paredit)

(add-hook 'clojure-mode-hook (lambda () 
                               (paredit-mode t)
                               (turn-on-eldoc-mode)
                               (unload-feature 'slime-autodoc t)  
                               (define-key clojure-mode-map "{" 'paredit-open-brace)
			       (define-key clojure-mode-map "}" 'paredit-close-brace)))

(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-overlays-use-font-lock t)
(setq cider-jack-in-lein-plugins '(("cider/cider-nrepl" "0.15.1")))
(setq cider-jack-in-dependencies '(("org.clojure/tools.nrepl" "0.2.13")))
(setq cider-inject-dependencies-at-jack-in t)

(message "... set up clojure...")

(provide 'rel-clojure-cfg)
