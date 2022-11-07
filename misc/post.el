;; post.el --- Use Emacs(client) as an external editor for mail and news.

;;; This file is a fork, maintained by Boruch Baum <boruch_baum@gmx.com>
;;; 2017-    https://github.com/Boruch-Baum/post-mode
;;; Original colophon follows:

;;; Authors: Eric Kidd <eric.kidd@pobox.com>,
;;;          Dave Pearson <davep@davep.org>,
;;;          Rob Reid <barlennan@gmail.com>,
;;;          Roland Rosenfeld <roland@spinnaker.de>

;;; Copyright 1999, 2002, 2004, 2008, 2014 Eric Kidd, Dave Pearson,
;;; Rob Reid, and Roland Rosenfeld.

;;; This program is free software: you can redistribute it and/or
;;; modify it under the terms of the GNU General Public License as
;;; published by the Free Software Foundation, either version 3 of the
;;; License, or (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Maintainers: Eric Dorland <eric@kuroneko.ca> and
;;;              Rob Reid <barlennan@gmail.com>

;;; Keywords: mail

;;; Commentary:
;;
;; This is a major mode for use with mutt (http://www.mutt.org/),
;; neomutt (https://neomutt.org), slrn (http://slrn.sourceforge.net/),
;; or most email and newsreaders that allow you to use an external
;; editor.
;;
;; The orignal version of this mode was/is:
;;   https://github.com/zedinosaur/post-mode
;; This forked version is:
;;   https://github.com/Boruch-Baum/post-mode

;; Installation:
;;
;;
;; 1] Add a few lines to emacs init file (usually ~/.emacs).
;;
;; 1.1] If you manually downloaded this file and want to make this
;;      package available to all your users, type "C-h v load-path
;;      RET", pick an appropriate system-wide directory for `post.el',
;;      and modify your sitewide default.el to include:
;;
;;        (require 'post).
;;
;; 1.2] If you installed this package using your distribution's
;;      package manager (eg. for debian, apt-get post-el) or using
;;      the emacs package manager, or if you manually copied this
;;      file to a directory already on your emacs load path ("C-h v
;;      load-path" to see):
;;
;;        (require 'post)
;;
;; 1.3] If you manually copied this file elsewhere and want to
;;      add that directory to your emacs load path:
;;
;;        (add-to-list 'load-path "path/to/directory/")
;;        (require 'post)
;;
;; 1.4] If you manually copied this file elsewhere and don't want
;;      to add that directory to your emacs load path:
;;
;;        (load "/your/local/path/to/this/file/post")
;;
;;      Note that you can omit the ".el" from the file name when
;;      calling load.
;;
;; 2] Optionally, here are some additional settings to consider
;;    adding after the above, as a good start to making your user
;;    experience a bit nicer:
;;
;;      (defun my-post-mode-hook()
;;        (setq
;;          fill-column 72    ; rfc 1855 for usenet messages
;;          post-signature-source-is-file t
;;          post-variable-signature-source "~/mutt/.signatures.fortune"
;;          post-fixed-signature-source    "~/mutt/.signature"
;;          post-signature-directory       "~/mutt/.signatures/"
;;          post-signature-wildcard        "sig*"
;;          post-random-signature-command  "fortune ~/mutt/.signatures.fortune"
;;          post-kill-quoted-sig t
;;          post-should-prompt-for-attachment "Smart")
;;        (footnote-mode)
;;        (flyspell-mode)
;;        (require 'boxquote))
;;      (add-hook 'post-mode-hook 'my-post-mode-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Thanks
;;;
;;; Dave Pearson: Code, feature ideas, Mutt experience. Many thanks!
;;; Louis Theran: Encouragement to make Mutt mode work like Emacs MUAs.
;;; Ronald: Enlightening gripes about what Emacs should do, but doesn't.
;;; Robert Napier: Bug reports about font-lock mode, fancy wrapping.
;;; Kevin Rodgers: Answered RR's question on gnu.emacs.help on
;;; overwriting server-process-filter's annoying message at startup.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Customization Support
;;;
;;; Set up our customizable features. You can edit these (and lots of other
;;; fun stuff) by typing M-x customize RET. The Post preferences can be
;;; found under the [Applications] [Mail] category.

(defgroup post nil
  "Composing e-mail messages with Post.
Emacs can run as an external editor for Mutt, the spiffy Unix mail reader
du jour, or slrn, the spiffy Unix news reader du jour.  You can get
Mutt from http://www.mutt.org/."
  :group 'mail)

(defcustom post-uses-fill-mode t
  "*Specifies whether Post should automatically wrap lines.
Set this to t to enable line wrapping, and nil to disable line
wrapping.  Note that if a paragraph gets messed up (the line wrapper
is very primitive), you can type \\[fill-paragraph] to rewrap the paragraph."
  :type 'boolean
  :group 'post)

(defcustom post-mail-message "\\(mutt\\(ng\\)?-[a-zA-Z0-9-.]+-[0-9]+-[0-9]+\\(-[a-fA-F0-9]+\\)?\\|mutt\\(ng\\)?[a-zA-Z0-9._-]\\{6\\}\\)\\'"
  "*Regular expression which matches your mailer's temporary files."
  :type 'regexp
  :group 'post)

(defcustom post-news-posting "\\.\\(followup\\|letter\\|article\\)$"
  "*Regular expression which matches your news reader's composition files."
  :type 'regexp
  :group 'post)

(defcustom post-backup-original nil
  "*Controls whether a pristine backup of the original is kept for reference."
  :type 'boolean
  :group 'post)

(defcustom post-signature-pattern "\\(--\\|\\)"
  "*Pattern signifying the beginning of signatures.
It should not contain trailing whitespace unless you know what you're doing."
  :type 'regexp
  :group 'post)

(defcustom post-signature-sep-regexp "^\\(%\\|^L\\|--\\)?\n"
  "*Regular expression delimiting signatures in the signature file.
This allows the use of classic fortune files as signature files.
This should normally contain a newline."
  :type 'regexp
  :group 'post)

(defcustom post-signature-source-is-file t
  "*Toggles the signature source type between file and directory."
  :type 'boolean
  :group 'post)

(defcustom post-variable-signature-source "~/.mutt/sigs.fortune"
  "*Location of the variable part of your signature.
Post uses this to locate signatures.  It can be either a directory
with one item per file or a file with items separated by blank lines."
  :type 'string
  :group 'post)

(defcustom post-fixed-signature-source "~/.fixedsig"
  "*File with the fixed part of your signature."
  :type 'string
  :group 'post)

(defcustom post-signature-directory "~/.sigs/"
  "*The directory that contains your collection of signature files."
  :type 'string
  :group 'post)

(defcustom post-signature-wildcard "sig*"
  "*Wildcard for finding signature files in your signature directory."
  :type 'string
  :group 'post)

(defcustom post-random-signature-command "fortune ~/.mutt/sigs.fortune"
  "*Command to run to get a random signature.
Examples are available at http://astro.utoronto.ca/~reid/mutt/"
  :type 'string
  :group 'post)

(defcustom post-kill-quoted-sig t
  "Specifies whether `post-mode' should automatically kill quoted signatures."
  :type 'boolean
  :group 'post)

(defcustom post-jump-header t
  "Specifies wheather `post-mode' should jump to the body."
  :type 'boolean
  :group 'post)

(defcustom post-force-pwd-to-home t
  "Specifies whether `post-mode' should cd to your home directory."
  :type 'boolean
  :group 'post)

(defcustom post-email-address (concat (user-login-name) "@" mail-host-address)
  "*Your email address."
  :type 'string
  :group 'post)

(defcustom post-should-prompt-for-attachment 'Smart
  "*Controls whether an attachment will be prompted for before saving
the message and exiting.  'Smart' will prompt only if the body
contains post-attachment-regexp."
  :type '(choice (const Never)
		 (const Smart)
		 (const Always))
  :group 'post)

(defcustom post-attachment-regexp "^[ \t\f]*[^>].*attach"
  "*This is what post looks for in the body if
post-should-prompt-for-attachment is 'Smart'."
  :type 'regexp
  :group 'post)

(defcustom post-news-poster-regexp "^On .*<.*>.*wrote:$"
  "Regular expression used to locate the attribution line of a news posting."
  :type 'regexp
  :group 'post)

(defcustom post-rename-buffer t
  "Specify whether `post-mode' should rename the buffer to *Composing*."
  :type 'boolean
  :group 'post)

(defcustom post-insert-to-auto-mode-alist-on-load t
  "Automatically insert `post-mode' with `post-mail-message' to `auto-mode-alist'."
  :type 'boolean
  :group 'post)

(defcustom post-mode-hook nil
  "List of hooks to be executed on entry to `post-mode'."
  :group 'post)

(defcustom post-quote-start "> "
  "Pattern which is added (or removed) at the beginning of the line by
comment-region"
  :type 'string
  :group 'post)

(defcustom post-email-address-pattern
  "[A-Za-z0-9_][-A-Za-z0-9._]*@[-A-Za-z0-9._]*[A-Za-z0-9]"
  "Pattern to detect email addresses."
  :type 'regexp
  :group 'post)

(defcustom post-url-pattern
  '("\\<\\(\\(https?\\|news\\|mailto\\|ftp\\|gopher\\):\\|\\(www\\|ftp\\)\\.\\)[-~A-Za-z0-9._/%$+?#:;&=]+[A-Za-z0-9/#&=]" "<URL:[^ ]+>")
  "Pattern to detect URL addresses."
  :type '(repeat regexp)
  :group 'post)

(defcustom post-bold-pattern '("\\*\\w+\\*")
  "*List of regular expressions that define bold text."
  :type '(repeat regexp)
  :group 'post)

(defcustom post-underline-pattern '("_\\w+_")
  "*List of regular expressions that define underlined text."
  :type '(repeat regexp)
  :group 'post)

(defcustom post-emoticon-pattern '("[0O(<{}]?[;:8B|][.,]?[-+^*o0O][{<>/\|]?[][)>(<|/\P][)>]?"
			"[(<]?[][)>(<|/\][}<>|]?[-+^*oO0][,.]?[:8][0O>]?"
			"[;:][][P)\/(]" "\\s [][)(P\/][:;]"
				   "<[Gg]>" "<[BbSs][Gg]>")
  "*List of regular expressions that define a emoticon."
  :type '(repeat regexp)
  :group 'post)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Customizable Faces
;;; If you find a more attractive color scheme for dark backgrounds, please
;;; email it to reid@astro.utoronto.

(defgroup post-faces nil
  "Typefaces used for composing messages with Post."
  :group 'post
  :group 'faces)

(defface post-header-keyword-face
  '((((class color)
      (background light))
     (:foreground "Navy" :bold t))
    (((class color)
      (background dark))
     (:foreground "LightBlue" :bold t))
    (t
     (:bold t)))
  "Face used for displaying keywords (e.g. \"From:\") in header."
  :group 'post-faces)

(defface post-header-value-face
  '((((class color)
      (background light))
     (:foreground "MidnightBlue"))
    (((class color)
      (background dark))
     (:foreground "LightSteelBlue")))
  "Face used for displaying the values of header."
  :group 'post-faces)

(defface post-quoted-text-face
  '((((class color)
      (background light))
     (:foreground "Sienna" :italic t))
    (((class color)
      (background dark))
     (:foreground "Wheat" :italic t))
    (t
     (:bold t :italic t)))
  "Face used for displaying text which has been quoted (e.g. \">foo\")."
  :group 'post-faces)

(defface post-double-quoted-text-face
  '((((class color)
      (background light))
     (:foreground "Firebrick" :italic t))
    (((class color)
      (background dark))
     (:foreground "Tan" :italic t))
    (t
     (:italic t)))
  "Face used for text which has been quoted twice (e.g. \">>foo\")."
  :group 'post-faces)

(defface post-multiply-quoted-text-face
  '((((class color)
      (background light))
     (:foreground "goldenrod" :italic t))
    (((class color)
      (background dark))
     (:foreground "tan3" :italic t))
    (t
     (:italic t)))
  "Face used for text which has been quoted more than twice (e.g. \">>>foo\")."
  :group 'post-faces)

(defface post-signature-text-face
  '((((class color)
      (background light))
     (:foreground "red3"))
    (((class color)
      (background dark))
     (:foreground "red1"))
    (t
     (:bold t)))
  "Face used for text that is part of a signature"
  :group 'post-faces)

(defvar post-signature-text-face 'post-signature-text-face
  "Face name to use for text that is part of a signature")

(defface post-email-address-text-face
  '((((class color)
      (background light))
     (:foreground "green3"))
    (((class color)
      (background dark))
     (:foreground "green1"))
    (t
     (:italic t)))
  "Face used for email addresses"
  :group 'post-faces)

(defface post-url-face
  '((((class color)
      (background light))
     (:foreground "green3" :bold t))
    (((class color)
      (background dark))
     (:foreground "green1" :bold t))
    (t
     (:italic t)))
  "Face used for URL addresses"
  :group 'post-faces)

(defface post-emoticon-face
  '((((class color)
      (background light))
     (:foreground "black" :background "yellow" :bold t))
    (((class color)
      (background dark))
     (:foreground "black" :background "yellow" :bold t))
    (t
     (:bold t)))
  "Face used for text matched by post-emoticon-pattern."
  :group 'post-faces)

(defface post-bold-face
  '((((class color)
      (background light))
     (:bold t))
    (((class color)
      (background dark))
     (:bold t))
    (t
     (:bold t)))
  "Face used for text matching post-bold-pattern."
  :group 'post-faces)

(defface post-underline-face
  '((((class color)
      (background light))
     (:underline t))
    (((class color)
      (background dark))
     (:underline t))
    (t
     (:underline t)))
  "Face used for text matching post-underline-pattern."
  :group 'post-faces)

; Note: some faces are added later!

(defvar post-quoted-text-pattern
  "^[ \t\f]*\\(>[ \t\f]*\\)\\([-a-zA-Z]*>[ \t\f]*\\)\\([-a-zA-Z]*>.*\\)$"
  "Regexp for recognizing quoted text")

(defvar post-font-lock-keywords
  `(("^\\([A-Z][-A-Za-z0-9.]+:\\)\\(.*\\)$"
     (1 'post-header-keyword-face)
     (2 'post-header-value-face))
    (,post-quoted-text-pattern
     (1 'post-quoted-text-face)
     (2 'post-double-quoted-text-face)
     (3 'post-multiply-quoted-text-face))
    ("^[ \t\f]*\\(>[ \t\f]*\\)\\([-a-zA-Z]*>.*\\)$"
     (1 'post-quoted-text-face)
     (2 'post-double-quoted-text-face))
    ("^[ \t\f]*\\(>[ \t\f]*[^ \t\f\n>].*\\)$"
     (1 'post-quoted-text-face))
    ("^[ \t\f]*\\(>[ \t\f]*\\)$"
     (1 'post-quoted-text-face))
	(,post-email-address-pattern
	 (0 'post-email-address-text-face)))
  "Highlighting rules for message mode.")

;;; Declare global mode variables.

(defconst post-font-lock-syntactic-keywords
  `((,(concat "^" post-signature-pattern "[ \t\f]*$") 0 '(11))))

(defun post-font-lock-syntactic-face-function (state)
  "Function for font locking syntactic faces.
Argument STATE ."
post-signature-text-face)

(defvar post-buf nil
  "Name of the composing buffer.")

(defvar post-select-signature-mode-map nil
  "Local keymap for the select-signature buffer.")

(defvar post-select-signature-last-buffer nil
  "Pointer to the calling buffer.")

(defvar post-select-signature-last-point nil
  "Where we were in the calling buffer.")

(defvar post-has-attachment nil
 "Whether the message has an attachment.")

(defvar post-ispell-skip-alist
  `(("^[A-Z][-A-Za-z0-9]+:")
	("^\\(To|Cc|Bcc|From|Reply-To\\): .*$")
    (,post-url-pattern)
    (,post-email-address-pattern)
    (,post-quoted-text-pattern))
  "What ispell should skip in buffer")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Interactive Commands

(defun post-save-current-buffer-and-exit ()
  "Save the current buffer and exit Emacs or its client session"
  (interactive)

  ;; Should the user be prompted for an attachment?
  (cond (post-has-attachment)
	((equal post-should-prompt-for-attachment 'Never))
	((or (equal post-should-prompt-for-attachment 'Always)
	     (post-body-says-attach-p))
	 (post-prompt-for-attachment)))

  (basic-save-buffer)

  (if post-backup-original
      (kill-buffer "*Original*"))

  (cond
    ((fboundp 'server-edit)
      (server-edit))
    ((fboundp 'gnuserv-kill-buffer-function)
      (gnuserv-kill-buffer-function))
    (t
      (save-buffers-kill-emacs)))
)

(defun post-goto-body ()
  "Go to the beginning of the message body."
  (interactive)
  (goto-char (point-min))
  ;; If the message has header, slide downward.
  (and header-mode (save-match-data (re-search-forward "^$" nil t))
       (forward-line)))

(defun post-goto-signature ()
  "Go to the beginning of the message signature."
  (interactive)
  (goto-char (point-max))
  (and (save-match-data
	 (re-search-backward (concat "^" post-signature-pattern
				     "[ \t\f]*$")
			     nil t))))

(defun post-delete-quoted-signatures ()
  "Delete quoted signatures from buffer."
  (interactive)
  (goto-char (point-min))
  (flush-lines (concat "^\\([ \t\f]*>[ \t\f>]*\\)"
		       post-signature-pattern
		       "[ \t\f]*\\(\n\\1.*\\)+")))

(defun post-kill-signature ()
  "Kill the signature from the buffer.
Returns the point value for where the signature was or, if there isn't a
signature, the point value of the end of the buffer"
  (interactive)
  (save-excursion
    (goto-char (point-min))
; The .=*+|#@!~$%&()_- is to compensate for people who put ASCII art on the
; same line as the sigdashes, and the $ at the end prevents this from deleting
; everything between mutt's standard forwarding lines.
    (cond ((search-forward-regexp (concat "^" post-signature-pattern
					  "[ \t\f.=*+|#@!~$%&()_-]*$") nil t)
	   (beginning-of-line)
	   (kill-region (point) (point-max)))
	  (t
	   (goto-char (point-max))))
    (point)))

(defun post-delete-old-citations ()
  "Delete citations more than one level deep from buffer."
  (interactive)
  (goto-char (point-min))
  (flush-lines "^[ \t\f]*>[ \t\f]*>[ \t\f>]*"))

;;; Functions for messing with the body

(defun post-make-region-bold (start end)
  "Apply mutt's nroff style bold to a region of text.
Argument START start of region.
Argument END end of region."
  (interactive "r")
  (while (< start end)
    (goto-char start)
    (insert (buffer-substring-no-properties start (1+ start)))
    (insert (char-to-string 8))
    (setq start (+ start 3))
    (setq end   (+ end   2))))

(defun post-make-region-underlined (start end)
  "Apply mutt's nroff style underline to a region of text.
Argument START start of region.
Argument END end of region."
  (interactive "r")
  (while (< start end)
    (goto-char start)
    (insert "_" (char-to-string 8))
    (setq start (+ start 3))
    (setq end   (+ end   2))))

(defun post-quote-region (beg end &optional arg)
  "Quote a region using the `post-quote-start' variable.
Arguments BEG and END are the beginning and end positions of the
region to be quoted; Interactively, these are automatically set.

Use the optional prefix-argument to repeat the operation however
many times."
  (interactive "r\np")
  (when (or (not arg)
            (< arg 1))
    (setq arg 1))
  (while (not (zerop arg))
    (comment-region beg end)
    (insert "\n")
    (forward-char -1)
    (fill-paragraph nil (list (point) (mark)))
    (delete-char 1)
    (goto-char (point))
    (setq arg (1- arg)
          beg (point)
          end (mark))))

(defun post-unquote-region (beg end &optional arg)
  "Un-quote a region one level using the `post-quote-start' variable.
Arguments BEG and END are the beginning and end positions of the
region to be quoted; Interactively, these are automatically set.

Use the optional prefix-argument to repeat the operation however
many times."
  (interactive "r\np")
  (when (or (not arg)
            (< arg 1))
    (setq arg 1))
  (while (not (zerop arg))
    (uncomment-region beg end)
    (insert "\n")
    (forward-char -1)
    (fill-paragraph nil (list (point) (mark)))
    (delete-char 1)
    (goto-char (point))
    (setq arg (1- arg)
          beg (point)
          end (mark))))

; From Dave Pearson, July 15, 2000
(defun split-quoted-paragraph (&optional quote-string)
  "Split a quoted paragraph at point, keeping the quote."
  (interactive)
  (let ((quote-string (or quote-string "> ")))
   (if (save-excursion
         (beginning-of-line)
         (looking-at (regexp-quote quote-string)))
      (progn
        (let ((spaces (- (point)
                         (save-excursion
                           (beginning-of-line)
                           (point))
                         (length quote-string))))
          (save-excursion
            (insert (format "\n\n%s%s" quote-string (make-string spaces ? ))))))
    (error "Can't see a quoted paragraph here"))))

(defun post-random-signature ()
  "Randomize the signature.
Set it to whatever `post-random-signature-command' spits out followed by the
content of `post-fixed-signature-source', if available, or a nasty reminder if
it is not."
  (interactive)
  (save-excursion
    (goto-char (post-kill-signature))
    (insert "-- \n")
    (shell-command post-random-signature-command t)
    (goto-char (point-max))
    (if (file-readable-p post-fixed-signature-source)
	(insert-file-contents post-fixed-signature-source)
      (insert "I really need a `post-fixed-signature-source'!\n"))))

(defun post-el-random-signature ()
  "Choose a random signature from `post-variable-signature-source'.
the signatures in `post-variable-signature-source' must be separated by
`post-signature-sep-regexp'."
  (interactive)
  (let ((sig nil))
    (with-current-buffer
      (generate-new-buffer "*Post-Select-Signature*")
      (insert-file-contents post-variable-signature-source)
      (goto-char (point-min))
      ;; we have 2 lists of marks since seperators are of arbitrary lenght
      (let ((marks-st (list (point-min)))
	    (marks-end (list))
	    (count 0))          ;nth counts from zero and random is [0,N)
	(while (search-forward-regexp post-signature-sep-regexp nil "a")
	  (setq marks-st (cons (match-end 0) marks-st)
		marks-end (cons (match-beginning 0) marks-end)
		count (1+ count)))
	(setq marks-end (cons (point-max) marks-end))
	(let ((r (random (1+ count))))
	  (setq sig (buffer-substring-no-properties
		     (nth r marks-st) (nth r marks-end))))
	(kill-buffer (current-buffer)))
      (goto-char (post-kill-signature))
      (insert "-- \n" sig)
      (if (file-readable-p post-fixed-signature-source)
	  (insert-file-contents post-fixed-signature-source)
	(insert "I really need a `post-fixed-signature-source'!\n")))))

(defun post-select-signature-from-file ()
  "*Interactively select a signature from `post-variable-signature-source'."
  (interactive)
  (setq post-select-signature-last-buffer (current-buffer))
  (setq post-select-signature-last-point (point))
  (pop-to-buffer "*Post-Select-Signature*")
  (insert-file-contents post-variable-signature-source)
  (use-local-map post-select-signature-mode-map)
  (read-only-mode t))

(defun post-select-signature-select-sig-from-file ()
 "*Chooses the signature the cursor is in from `post-variable-signature-source'."
  (interactive)

  ;; These 2 lines select whatever siglet the cursor is sitting in,
  ;; making it nifty to C-s "word" then C-m (or whatever this is
  ;; bound to).
  (let ((sig-start (point))
        (sig-end (point)))

    (cond ((setq sig-start (search-backward-regexp post-signature-sep-regexp
						   nil "a"))
	   (forward-line 1)
	   (setq sig-start (point))))

    (if (search-forward-regexp post-signature-sep-regexp nil "a")
	(setq sig-end (match-beginning 0))
      (setq sig-end (point-max)))

    (let ((sig (buffer-substring-no-properties sig-start sig-end)))
      (switch-to-buffer post-select-signature-last-buffer)
      (goto-char (post-kill-signature))
      (insert "-- \n" sig))
    (if (file-readable-p post-fixed-signature-source)
	(insert-file-contents post-fixed-signature-source))
    (post-select-signature-quit)))

(defun post-select-signature-from-dir ()
  "Select a new signature for an email/post in the current buffer."
  (interactive)
  (setq post-select-signature-last-buffer (current-buffer))
  (setq post-select-signature-last-point (point))
  (pop-to-buffer "*Post-Select-Signature*")
  (list-directory (concat post-signature-directory
                          post-signature-wildcard) t)
  (pop-to-buffer "*Directory*")
  (forward-line)
  (copy-to-buffer "*Post-Select-Signature*" (point) (point-max))
  (kill-buffer "*Directory*")
  (pop-to-buffer "*Post-Select-Signature*")
  (use-local-map post-select-signature-mode-map)
  (read-only-mode t))

(defun post-select-signature-select-sig-from-dir ()
  "Set the signature in the calling buffer to the one under the cursor."
  (interactive)
  (let ((sig-start   nil)
        (sig-to-load nil))
    (end-of-line)
    (search-backward " ")
    (forward-char)
    (setq sig-start (point))
    (end-of-line)
    (setq sig-to-load (buffer-substring-no-properties sig-start (point)))
    (switch-to-buffer post-select-signature-last-buffer)
    (goto-char (post-kill-signature))
    (insert "-- \n")
    (insert-file-contents (concat post-signature-directory sig-to-load))
    (message "Signature set to %s%s" post-signature-directory sig-to-load)
    (post-select-signature-quit)))

(defun post-select-signature-quit ()
  "Kill the *Post-Select-Signature* frame."
  (interactive)
  (kill-buffer "*Post-Select-Signature*")
  (switch-to-buffer post-select-signature-last-buffer)
  (goto-char post-select-signature-last-point)
  (delete-other-windows))

(defun post-attach-file ()
  "Prompt for an attachment."
  (interactive)
  (let ((file (read-file-name "Attach file: " nil nil t nil))
    (description (read-string "Description: " nil nil nil t)))
    (header-attach-file file description)))

;;; Non-interactive functions

(defun post-prompt-for-attachment ()
  "Prompt for an attachment."
   (if (y-or-n-p "Do you want to attach anything? ")
       (post-attach-file)))

(defun post-references-p ()
  "Is there a References header in this buffer?"
  (save-excursion
    (goto-char (point-min))
    (looking-at "^References: ")))

(defun post-body-says-attach-p ()
  "Check if attach appears in the body."
  (post-goto-body)

  ;; Aargh it's annoying that how-many returns a string,
  ;; "13 occurences" instead of a number, 13.
  ;; As of Emacs 22 how-many returns an integer number.  Consideration
  ;; must be taken for both newer and older versions.
  (let ((total-attach (how-many post-attachment-regexp)))
    (if (string= (type-of total-attach) 'string)
        (setq total-attach (string-to-number (how-many post-attachment-regexp))))
    ;; And this mess is just to catch the unlikely false alarm of
    ;; "attach" being in the signature, but not in the body.
    (if (> total-attach 0)
	    (progn (post-goto-signature)
		   (if (string= (type-of (how-many post-attachment-regexp)) 'string)
		       (> total-attach (string-to-number (how-many
						       post-attachment-regexp)))
		     (> total-attach (how-many
				      post-attachment-regexp)))))))

(defun post-ask-for-address-with-default (header)
  "Prompt for an email address, showing default.
Argument HEADER the header type."
  (let ((default (if (= (length (post-get-header-value header)) 0)
                     post-email-address
                   (post-get-header-value header))))
    (read-string (concat header ": ") default)))

; From davep@davep.org.  RR hasn't tested it.
(defun post-get-header-value (header)
  "Get the value of a specific mail HEADER."
  (save-excursion
    (let ((value          "")
          (start-of-value nil))
      (setf (point) (point-min))
      (when (post-find-header-line header)
        (setq start-of-value (point))
        (end-of-line)
        (setq value (buffer-substring-no-properties start-of-value (point))))
      value)))

;;; From davep@davep.org.  RR hasn't tested it.
(defun post-find-header-line (header)
  "Find a HEADER line in the header."
  (let ((old-point (point))
        (end-of-header nil)
        (found-point nil))
    (setf (point) (point-min))
    (search-forward-regexp "^$" nil t)
    (setq end-of-header (point))
    (setf (point) (point-min))
    (cond ((search-forward-regexp (concat "^" header ": ") nil t)
           (cond ((< (point) end-of-header)
                  (setq found-point (point)))
                 (t
                  (setf (point) old-point))))
          (t
           (setf (point) old-point)))
    found-point))

;;; Function to make a backup buffer for viewing the original.
(defun post-copy-original ()
  "Make a copy of the `post-mode' buffer before any editing by the user.
This way they can refer back to this buffer during a compose session."
  (copy-to-buffer (get-buffer-create "*Original*")
		  (point-min) (point-max)))

;;; Mostly stolen from flyspell.el, mail-mode-flyspell-verify
(put 'post-mode 'flyspell-mode-predicate 'post-mode-flyspell-verify)
(defun post-mode-flyspell-verify ()
  "This function is used for `flyspell-generic-check-word-p' in Post mode."
  (let ((in-headers
		 (and (save-excursion (goto-char (point-min))
							  (re-search-forward "^$" nil t))
			  (< (point) (match-end 0))))
		(in-signature (save-excursion
						(re-search-backward (concat "^" post-signature-pattern
                                                    "[ \t\f]*$") nil t))))
	(cond (in-headers (and (save-excursion (beginning-of-line)
										   (looking-at "^Subject:"))
						   (> (point) (match-end 0))))
		  (in-signature nil)
		  (t (save-excursion (beginning-of-line)
							 (not (looking-at
								   (concat "[ \t\f]*" post-quote-start))))))))

(defun post-quote-newline ()
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-derived-mode post-mode text-mode "Post"
  "Major mode for composing email or news with an external agent.
To customize it, type \\[customize] and select [Applications]
[Mail] [Post]. When you finish editing this message, type
\\[post-save-current-buffer-and-exit] to save and exit Emacs.

\\{post-mode-map}"

  (auto-fill-mode (if post-uses-fill-mode 1 0))

  (if post-backup-original (post-copy-original))

  ;; Make Emacs smarter about wrapping citations and paragraphs.
  ;; We probably can't handle Supercited messages, though.
  (make-local-variable 'paragraph-start)
  (make-local-variable 'paragraph-separate)
  (setq paragraph-start
	(concat "\\([ \t\n\f]+[^ \t\n\f>]\\|[ \t\f>]*$\\|.+:$\\|"
	        post-signature-pattern " *$\\)")
	paragraph-separate
	(concat "[ \t\f>]*$\\|.+:$\\|" post-signature-pattern " *$"))

  ;; XEmacs needs easy-menu-add, Emacs does not care
  (easy-menu-add post-mode-menu)

  ;; If headers were passed, activate the necessary commands.
  (when (looking-at "^[-A-Za-z0-9]+:")
    (header-mode 1))

  ;; Our temporary file lives in /tmp. Yuck! Compensate appropriately.
  (make-local-variable 'backup-inhibited)
  (setq backup-inhibited t)

  ;; Skip certain patterns for ispell
  ;(set (make-local-variable 'ispell-skip-region-alist)
  ;		(append ispell-skip-region-alist post-ispell-skip-alist))

  (when (boundp 'font-lock-defaults)
     (make-local-variable 'font-lock-defaults))

  (dolist (x '((post-emoticon-face  post-emoticon-pattern)
               (post-bold-face      post-bold-pattern)
               (post-underline-face post-underline-pattern)
               (post-url-face       post-url-pattern)))
    (nconc post-font-lock-keywords
      (mapcar
        (lambda (regexp)
          (list regexp (list 0 (car x) 't)))
        (symbol-value (cadr x)))))

  (setq font-lock-defaults
	'(post-font-lock-keywords nil nil nil nil
				  (font-lock-syntactic-keywords
				   . post-font-lock-syntactic-keywords)
				  (font-lock-comment-face
				   . post-signature-text-face)))

  ;; Force pwd to home directory if so required.
  (cond (post-force-pwd-to-home
	 (cd "~")))

  ;; Kill quoted sig if so required.
  (cond (post-kill-quoted-sig
	 (post-delete-quoted-signatures)
         (set-buffer-modified-p nil)))

  ;; Remap signature selection functions according to whether the
  ;; signatures are stored in a file or directory.
  (if post-signature-source-is-file
      (progn
	(defalias 'post-select-signature 'post-select-signature-from-file)
	(defalias 'post-select-signature-select-sig
	  'post-select-signature-select-sig-from-file))
    (progn
      (defalias 'post-select-signature 'post-select-signature-from-dir)
      (defalias 'post-select-signature-select-sig
	'post-select-signature-select-sig-from-dir)))

  ;; Give the buffer a handy name.
  (if post-rename-buffer
      (setq post-buf (rename-buffer "*Composing*" t)))

  ;; If this is a news posting, check the length of the References field.
  (if (post-references-p)
      (header-check-references))

  ;; Define the quote signs as comments to make comment-region usable.
  (make-local-variable 'comment-start)
  (setq comment-start post-quote-start)

  ;; Run any hooks.
  (run-hooks 'post-mode-hook)

  ;; Jump past header if so required.
  (cond (post-jump-header
         (post-goto-body)))

  (unless (fboundp 'server-process-filter)
    (message (substitute-command-keys
     "Type \\[describe-mode] for help composing; \\[post-save-current-buffer-and-exit] when done."))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Post Header Mode

(defvar header-mode nil)

(defun header-mode (&optional arg)
  "Commands for editing the header of an e-mail or news message.

\\{header-mode-map}
Optional argument ARG ."

  (interactive "P")
  (make-local-variable 'header-mode)
  (setq header-mode
	(if (null arg)
	    (not header-mode)
	  (> (prefix-numeric-value arg) 0)))
  (setq post-has-attachment nil)

  ;; XEmacs needs easy-menu-add, Emacs does not care
  (easy-menu-add header-mode-menu)

  (force-mode-line-update))

(defvar header-mode-map (make-sparse-keymap)
  "Keymap used for editing RFC822 header.")

(defun header-position-on-value ()
  "Go to the start of the value part of a header."
  (beginning-of-line)
  (skip-chars-forward "-A-Za-z0-9:")
  ;; XXX - Should make sure we stay on line.
  (forward-char)
  (point))

(defun header-goto-field (field)
  "Go to FIELD of a header."
  (let ((case-fold-search t))
    (goto-char (point-min))
    (save-match-data
      (when (re-search-forward (concat "^\\($\\|" field ": \\)"))
	(if (looking-at "^$")
	    (progn
	      (insert field ": \n")
	      (forward-char -1))
	  (header-position-on-value))))))

(defmacro define-header-goto (name header)
  "Define functions called NAME to go to HEADER."
  `(defun ,name ()
     ,(concat "Position the cursor on the " header ": header.")
     (interactive)
     (header-goto-field ,header)))

(define-header-goto header-goto-to "To")
(define-header-goto header-goto-cc "Cc")
(define-header-goto header-goto-fcc "Fcc")
(define-header-goto header-goto-summary "Summary")
(define-header-goto header-goto-keywords "Keywords")
(define-header-goto header-goto-subject "Subject")
(define-header-goto header-goto-bcc "Bcc")
(define-header-goto header-goto-reply-to "Reply-To")
(define-header-goto header-goto-from "From")
(define-header-goto header-goto-organization "Organization")

(defun header-attach-file (file description)
  "Attach a FILE to the current message (works with Mutt).
Argument DESCRIPTION MIME description."
  (interactive "fAttach file: \nsDescription: ")
  (when (> (length file) 0)
    (save-excursion
      (save-match-data
	(save-restriction
	  (widen)
	  (goto-char (point-min))
	  (search-forward-regexp "^$")
	  (insert (concat "Attach: " (replace-regexp-in-string
                                  " "
                                  "\\\\ "
                                  (file-truename file)) " "
                      description "\n"))
	  (message (concat "Attached '" file "'."))
	  (setq post-has-attachment t))))))

(or (assq 'header-mode minor-mode-alist)
    (setq minor-mode-alist
	  (cons '(header-mode " Header") minor-mode-alist)))

(or (assq 'header-mode minor-mode-map-alist)
    (setq minor-mode-map-alist
	  (cons (cons 'header-mode header-mode-map)
		minor-mode-map-alist)))

(defun header-set-return-receipt-to (address)
  "Insert a Return-Receipt-To header into an email.
Argument ADDRESS email address return receipts should be sent to."
  (interactive (list (post-ask-for-address-with-default "Return-Receipt-To")))
  (save-excursion
    (header-set-value "Return-Receipt-To" address)))

(defun post-news-posting-p ()
  "Does the buffer look like a news posting?"
  (save-excursion
    (setf (point) (point-min))
    (looking-at "^Newsgroups: ")))

(defun header-set-followup-to (to)
  "Set the Followup-To: header.
Argument TO Where followups should go."
  (interactive (list (header-ask-for-value "Followup-To"
					   (header-ask-for-value
					    "Newsgroups"))))
  (cond ((post-news-posting-p)
	 (save-excursion
	   (header-set-value "Followup-To" to)))
	(t
	 (error
  "Followup-To is for Usenet.  Maybe you want Reply-To or Mail-Followup-To"))))

(defun header-set-organization (org)
  "Set the Organization: header.
Argument ORG Should be SMERSH."
  (interactive (list (header-ask-for-value "Organization")))
  (save-excursion
    (header-set-value "Organization" org)))

(defun header-check-references ()
  "Place the cursor at the start of the References: if they are too long."
  (interactive)
  (cond ((> (header-references-length) 500) ; 500 to be on the safe side.
         (beep)                              ; Catch my attention.
         (goto-char (point-min))
         (search-forward-regexp "^References: " nil t))))

(defun header-references-length (&optional show)
  "Get (and optionally display) the length of the references header.
Optional argument SHOW Whether or not to display the length."
  (interactive)
  (let* ((header "References")
         (refs (header-get-value header))
         (len (+ (length header) (length refs) 2)))
    (if (or (called-interactively-p "any") show)
        (message "References header is %d characters in length." len))
    len))

(defun header-delete-reference ()
  "Delete the first reference in the references header."
  (interactive)
  (save-excursion
    (let ((ref-location (header-goto-field "References")))
      (cond (ref-location
             (let ((ref-start (goto-char ref-location)))
               (cond ((search-forward ">" nil t)
                      (forward-char 1)
                      (delete-region ref-start (point))
                      (header-references-length t)))))))))

;; Noninteractive functions.

(defun header-ask-for-value (header &optional default)
  "Ask for a HEADER value, defaulting to the current value if one is present.
Optional argument DEFAULT ."
  (let ((new-value (post-get-header-value header)))
    (and (= (length new-value) 0)
         default
         (setq new-value default))
    (read-string (concat header ": ") new-value)))

(defun header-get-value (header)
  "Get the value of a specific mail HEADER."
  (save-excursion
    (let ((value          "")
          (start-of-value nil))
      (goto-char (point-min))
      (cond ((post-find-header-line header)
             (setq start-of-value (point))
             (end-of-line)
             (setq value (buffer-substring-no-properties
			  start-of-value (point)))))
      value)))

(defun header-set-value (header value)
  "Set VALUE of a HEADER (replacing any existing value)."
  (let ((kill-ring kill-ring))
    (setf (point) (point-min))
    (cond ((post-find-header-line header)
	   (beginning-of-line)
	   (kill-line)
	   (insert header ": " value))
	  (t
	   (header-append-value header value))))
  (message "%s set to %s" header value))

(defun header-append-value (header value)
  "Add a HEADER and set it's VALUE (if header exists, will add multiple headers)."
  (goto-char (point-min))
  (search-forward-regexp "^$" nil t)
  (insert header ": " value "\n"))

;;; Setup the mode map for the select-signature buffer.
(if post-select-signature-mode-map nil
  (setq post-select-signature-mode-map (make-sparse-keymap))
  (define-key post-select-signature-mode-map "\C-m"
    'post-select-signature-select-sig)
  (define-key post-select-signature-mode-map " "
    'post-select-signature-select-sig)
  (define-key post-select-signature-mode-map "q" 'post-select-signature-quit)
  (define-key post-select-signature-mode-map "\C-g"
    'post-select-signature-quit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Key Bindings

(define-key post-mode-map "\C-c\C-c" 'post-save-current-buffer-and-exit)
(define-key post-mode-map "\C-c\C-d\C-s" 'post-delete-quoted-signatures)
(define-key post-mode-map "\C-c\C-d\C-c" 'post-delete-old-citations)
(define-key post-mode-map "\C-c\C-t" 'post-goto-body)
(define-key post-mode-map "\C-c\C-e" 'post-goto-signature)
(define-key post-mode-map "\C-c\C-r" 'post-random-signature)
(define-key post-mode-map "\C-c\C-b" 'post-make-region-bold)
(define-key post-mode-map "\C-c\C-u" 'post-make-region-underlined)
(define-key post-mode-map "\C-c\C-q" 'post-quote-region)
(define-key post-mode-map "\C-c\C-d\C-q" 'post-unquote-region)
(define-key post-mode-map "\C-c\C-s" 'post-select-signature)
(define-key post-mode-map "\C-c\C-a" 'post-attach-file)

(define-key post-mode-map [remap server-edit]
  'post-save-current-buffer-and-exit)
(define-key post-mode-map [remap save-buffers-kill-terminal]
  'post-save-current-buffer-and-exit)

(define-key header-mode-map "\C-c\C-f\C-t" 'header-goto-to)
(define-key header-mode-map "\C-c\C-f\C-c" 'header-goto-cc)
(define-key header-mode-map "\C-c\C-f\C-w" 'header-goto-fcc)
(define-key header-mode-map "\C-c\C-f\C-u" 'header-goto-summary)
(define-key header-mode-map "\C-c\C-f\C-k" 'header-goto-keywords)
(define-key header-mode-map "\C-c\C-f\C-s" 'header-goto-subject)
(define-key header-mode-map "\C-c\C-f\C-b" 'header-goto-bcc)
(define-key header-mode-map "\C-c\C-f\C-r" 'header-goto-reply-to)
(define-key header-mode-map "\C-c\C-f\C-f" 'header-goto-from)
(define-key header-mode-map "\C-c\C-f\C-o" 'header-goto-organization)
(define-key header-mode-map "\C-c\C-ff"    'header-set-followup-to)
(define-key header-mode-map "\C-c\C-a"     'header-attach-file)
(define-key header-mode-map "\C-c\C-fd"    'header-delete-reference)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Menus

(easy-menu-define
 post-mode-menu post-mode-map "Post Message Composition Commands."
 '("Post"
   ["Delete quoted signatures" post-delete-quoted-signatures t]
   ["Delete doubly quoted text" post-delete-old-citations t]
   "----"
   ["Go to body of message" post-goto-body t]
   ["Go to signature of message" post-goto-signature t]
   ["Get new random signature" post-random-signature t]
   ["Select new signature" post-select-signature t]
   "----"
   ["Embolden region" post-make-region-bold t]
   ["Underline region" post-make-region-underlined t]
   "----"
   ["Quote region" post-quote-region t]
   ["Unquote region" post-unquote-region t]
   "----"
   ["Save message and return from Post" post-save-current-buffer-and-exit t]))

(easy-menu-define
 header-mode-menu header-mode-map "Header Editing Commands."
 '("Header"
   ["Attach File..." header-attach-file t]
   "----"
   ["Edit From Header" header-goto-from t]
   ["Edit Subject Header" header-goto-subject t]
   ["Edit To Header" header-goto-to t]
   ["Edit Cc Header" header-goto-cc t]
   ["Edit Bcc Header" header-goto-bcc t]
   ["Edit Fcc Header" header-goto-fcc t]
   ["Edit Reply-To Header" header-goto-reply-to t]
   ["Edit Summary Header" header-goto-summary t]
   ["Edit Keywords Header" header-goto-keywords t]
   ["Edit Organization Header" header-goto-organization t]))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Finish Installing Post Mode

(when post-insert-to-auto-mode-alist-on-load
  (unless (assq post-mail-message auto-mode-alist)
    (setq auto-mode-alist
	  (cons (cons post-mail-message 'post-mode)
		auto-mode-alist)))
  (unless (assq post-news-posting auto-mode-alist)
    (setq auto-mode-alist
	  (cons (cons post-news-posting 'post-mode)
		auto-mode-alist))))

(provide 'post)

;;; post.el ends here
