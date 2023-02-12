;;
;; snippets and other bits of borrowed code
;; attribution included where available
;;

(defun plist-to-alist (the-plist)
  (defun get-tuple-from-plist (the-plist)
    (when the-plist
      (cons (car the-plist) (cadr the-plist))))
  (let ((alist '()))
    (while the-plist
      (add-to-list 'alist (get-tuple-from-plist the-plist))
      (setq the-plist (cddr the-plist)))
  alist))

;
; adapted from c2.com wiki, GreatEmacsLispSnippets...
;
(defun get-buffer-filename ()
  "Report filename of current buffer"
  (interactive nil) (message "%s" (buffer-file-name)))

(define-key global-map "\C-c\C-sf" 'get-buffer-filename)

(defun insert-timeofday ()
  (interactive "*")
  (insert (format-time-string "%a, %d %b %y %H:%M\n")))

(define-key global-map "\C-c i t" 'insert-timeofday)


;
; url conveniences from Alex Schroeder
;
(defun url-encode (str)
  "URL-encode a string"
  (interactive "sURL-encode: ")
  (message "%s" (url-hexify-string str)))

;(defalias 'url-escape 'url-encode)

(defun url-decode (str)
  "URL-decode a string"
  (interactive "sURL-decode: ")
  (message "%s" (decode-coding-string
		 (url-unhex-string str)
		 'utf-8)))

;;
;; thanks to Edward O'Conner for these
;;
(when (locate-library "boxquote")
  (defvar ted-boxquote-map (make-sparse-keymap))
  (global-set-key (kbd "C-c b q") ted-boxquote-map)
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

;
; Joel Holveck, use available spellcheck and set flyspell mode
;
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

;
; Joel Holveck, ssh via comint buffer
;
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

;
; thanks to Dave Pearson
;
; rlonsteinl, added random seed
;
(defun totd ()
  "Tip of the day: describe a random function"
  (interactive)
  (random t)
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

;
; Drew Adams's suggestion for fast scratch buffer
;
(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

(define-key global-map "\C-csb" 'create-scratch-buffer)

; from emacs-wiki
(defun execvp (&rest args)
  (let ((cmd (mapconcat 'shell-quote-argument args " ")))
    (shell-command-to-string cmd)))

;
; from Sam Steingold, perhaps uncredited from someone else...
;
(defun sds-apostrophe ()
  "Enclose the current symbol in `'."
  (interactive)
  (let ((pt (point)))
    (skip-syntax-backward "^[_w]")
    (skip-syntax-backward "[_w]") (insert ?`)
    (skip-syntax-forward "[_w]") (insert ?')
    (goto-char (+ pt (if (< pt (- (point) 2)) 1 2)))))


; Get current system name
(defun insert-system-name() (interactive)
  "Get current system name"
  (insert (format "%s" system-name)))

; Get current system type
(defun insert-system-type() (interactive)
  "Get current system type"
  (insert (format "%s" system-type)))

; from MJD 20101110, after similar on emacs-wiki
(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files"
  (interactive)
  (let* ((list (buffer-list))
         (buffer (car list)))
    (while buffer
      (when (and (buffer-file-name buffer) 
                 (not (buffer-modified-p buffer)))
        (set-buffer buffer)
        (revert-buffer t t t))
      (setq list (cdr list))
      (setq buffer (car list))))
  (message "Refreshed open files"))

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

(provide 'rel-borrowed-snippets)


