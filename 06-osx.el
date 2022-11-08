;; OSX, need this on Carbon Emacs
(when +running-osx+
    (progn (set-cursor-color "white")
           (setq x-select-enable-clipboard t)))

(if (and +running-osx+ (not (null window-system)))
    (let ((preferred-font
           (if +running-carbon-emacs+ "-apple-Envy code r-medium-r-normal--13-130-72-72-m-130-iso10646-1"
             "-apple-Akkurat_Mono-medium-normal-normal-*-12-*-*-*-m-0-fontset-auto7")))
      (when (font-existp preferred-font)
        (progn
          (set-face-font 'default preferred-font)
          (message "... set OSX default face to [%s]..." preferred-font)))))

(if +running-osx+
    (set-variable 'magit-emacsclient-executable "/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient"))

; maybe fix OSX iTerm2/Emacs keys
(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;5B" [C-down])
(define-key input-decode-map "\e[1;5C" [C-right])
(define-key input-decode-map "\e[1;5D" [C-left])

(if +running-osx+ (setq magit-git-executable "/opt/local/bin/git"))

;;(when (and +running-osx+ (>= 23 emacs-major-version))
  ; Oddly, macports emacs.app doesn't find the auctex port. Tell it where to look.
;;  (add-to-load-path "/Applications/MacPorts/Emacs.app/Contents/Resources/lisp/auctex"))
