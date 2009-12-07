;;;
;;; refactoring init.el, various useful functions
;;;
;;;
;;; (c) 2009, R. Lonstein
;;; http://creativecommons.org/licenses/MIT/
;;;

(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(defalias 'switch-to-next-buffer 'bury-buffer)

(defun switch-to-previous-buffer ()
  "Switches to previous buffer"
  (interactive)
  (switch-to-buffer (nth (- (length (buffer-list)) 1) (buffer-list))))

(defun uncomment-region (beg end)
  "Like `comment-region' invoked with a C-u prefix arg."
  (interactive)
  (comment-region beg end -2))

(defun comment-line ()
  (interactive)
  (beginning-of-line)
  (let ((beg (point))) (forward-line 1) (comment-region beg (point))))

(defun uncomment-line ()
  (interactive)
  (beginning-of-line)
  (let ((beg (point))) (forward-line 1)
       (uncomment-region beg (point))))

(unless (fboundp 'region-exists-p)
  (defun region-exists-p () mark-active))

(defun smart-delete ()
  "Delete region or char"
  (interactive)
  (if (region-exists-p) (delete-region (point) (mark))
    (delete-char 1)))

(defun comment-line-or-region ()
  "Comments the current line or region, depending on whether a region is
  currently active or not."
  (interactive)
  (if (region-exists-p)
      (comment-region (point) (mark))
    (comment-line)))

(defun uncomment-line-or-region ()
  "Uncomments the current line, or if the region is active, the whole region."
  (interactive)
  (if (region-exists-p)
      (uncomment-region (point) (mark))
    (uncomment-line)))

;; Function to run Tidy HTML parser on buffer
;; NOTE: this requires external Tidy program
(defun tidy-buffer ()
  "Run Tidy HTML parser on current buffer."
  (interactive)
  (if (get-buffer "tidy-errs") (kill-buffer "tidy-errs"))
  (shell-command-on-region 
   (point-min) (point-max)
   "tidy -f /tmp/tidy-errs -q -i -asxhtml -wrap 72 -c" t)
  (find-file-other-window "/tmp/tidy-errs")
  (other-window 1)
  (delete-file "/tmp/tidy-errs")
  (message "buffer tidy'ed"))

;FIXME: collect error output from astyle into new buffer
(defun style-buffer ()
  "Run astyle on current buffer"
  (interactive)
  (shell-command-on-region (point-min) (point-max) "astyle" t)
  (message "buffer astyled"))

;
; run perl Text::Autoformat on region
;
(defun rel-autoformatter (begin end rightmargin)
  "Run Text::Autoformat on region"
  (shell-command-on-region begin end (format "/opt/local/bin/perl -MText::Autoformat -e 'autoformat({all=>1,right=>%d})'" rightmargin) t t )
  (message "done."))

(defun rel-autoformat (begin end)
  "Run Text::Autoformat on region with right margin of 72"
  (interactive "r")
  (rel-autoformatter begin end 72))

(defun rel-autoformat-quote (begin end)
  "Run Text::Autoformat on region with right margin of 60"
  (interactive "r")
  (rel-autoformatter begin end 60))

;;
;; Text killer- delete region, to sig, or paragraph
;;
(defun rel-whack (count)
  "text killer, region/to sig/or paragraph"
  (interactive "p")
  (while (> count 0)
    (setq count (1- count))
    (let ((start (point)))
      (cond
       ((region-exists-p)                 ; kill region
        (rel-elide-lines (point) (mark)))
       ((re-search-forward "^--" nil t)   ; kill to sig
        (forward-line -1)
        (rel-elide-lines start (point)))
       (t                                 ; kill next paragraph
        (forward-paragraph)
        (rel-elide-lines start (point)))))))

(defun rel-elide-lines (start end &optional nocount)
  "Delete region then insert an elision comment, optionally noting the number of lines"
  (let ((lines (count-lines start end)))
    (delete-region start end)     
    (if (not (or nocount (< lines 2)))
        (insert "    [snip -- " (number-to-string lines) " lines removed]")
      (insert "   [snip]")))
  (insert "\n\n\n")
  (forward-line -1))

(defun insert-mit-license ()
  (interactive)
  (insert "
Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the \"Software\"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
"))


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