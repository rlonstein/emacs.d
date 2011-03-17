;;; rel-org-config.el

(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(eval-after-load "org-agenda"
  '(progn 
     (define-key org-agenda-mode-map "\C-n" 'next-line)
     (define-key org-agenda-keymap "\C-n" 'next-line)
     (define-key org-agenda-mode-map "\C-p" 'previous-line)
     (define-key org-agenda-keymap "\C-p" 'previous-line)))

(require 'org-table)
(require 'org-colview)
(require 'org-clock)

(setq my-org-directory (file-name-as-directory  (concat +homedir+ "/Documents/todo")))
(setq diary-file (concat my-org-directory "diary"))
(setq org-agenda-files (mapcar #'(lambda (s) (concat my-org-directory s)) '("todo.org" "work.org")))
(setq my-org-notes-file (concat my-org-directory "notes.org"))
(setq org-capture-templates
      `(("t" "Todo" entry 
         (file+headline ,(concat my-org-directory "todo.org") "Tasks")
         "* TODO %?\n  %u\n%i\n\n")
        ("c" "On-Call" entry
         (file+headline ,(concat my-org-directory "todo.org") "On-Call")
         "* TODO %?\n  %u\n%i\n\n" :prepend)))

                                        ;  (add-hook org-clock-out-hook 'org-clock-sum)

(setf org-columns-default-format "%30ITEM(Task) %15Effort(Est. Effort){:} %CLOCKSUM %TODO %TAGS")

;;----------------------------------------------------------------------
;; hook clock in to request an effort estimate
;; thanks to Ryan C. Thompson on worg
;;
(defun rct-org-mode-ask-effort ()
  "Ask for an effort estimate when clocking in."
  (unless (org-entry-get (point) "Effort")
    (let ((effort
           (completing-read
            "Effort: "
            (org-entry-get-multivalued-property (point) "Effort"))))
      (unless (equal effort "")
        (org-set-property "Effort" effort)))))

(add-hook 'org-clock-in-prepare-hook 'rct-org-mode-ask-effort)
;;----------------------------------------------------------------------

(setf
 org-agenda-include-diary t
 org-agenda-ndays 14
 org-agenda-show-all-dates t
 org-agenda-skip-deadline-if-done nil
 org-agenda-skip-scheduled-if-done nil
 org-agenda-start-on-weekday nil
 org-clock-in-resume t
 org-clock-in-switch-to-state "STARTED"
 org-clock-into-drawer "CLOCK"
 org-clock-out-removes-zero-time-clocks t
 org-clock-out-when-done t
 org-clock-persist t
 org-clock-persist-file ".org-clock-save.el"
 org-deadline-warning-days 21
 org-drawers (quote ("PROPERTIES" "LOGBOOK" "CLOCK"))
 org-fast-tag-selection-single-key (quote expert)
 org-log-done '(state)
 org-reverse-note-order t
 org-use-speed-commands t)

(global-set-key (kbd "C-c o l") 'org-store-link) 
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o b") 'org-iswitchb)
(global-set-key (kbd "C-c o r") 'org-capture)

(message "... set up org-mode...")

(defun rel-org-maybe-copy-ts-item (buf)
  "Copy current line to specified buffer if line is a timestamped item"
  (when (save-excursion
          (beginning-of-line 1)
          (skip-chars-forward "\t ")
          (looking-at (concat "- " org-ts-regexp3)))
    (let ((l (buffer-substring (line-beginning-position) (line-end-position))))
      (with-current-buffer buf
        (insert l "\n")))))

(defun rel-org-extract-timeline ()
  "Iterate over the current heading collecting the first line of
  timestamped items into a sorted timeline in a buffer"
  (interactive)
  (let ((buf (generate-new-buffer "timeline")))
    (save-excursion
      (org-back-to-heading)
      (unless (> (org-current-level) 1) (error "Must be at sublevel"))
      (let ((heading (org-get-heading t))
            (clktime (apply 'encode-time (append `(0 ,(org-clock-sum-current-item) 0) (nthcdr 3 (decode-time)))))
            (start (point))
            (end (save-excursion (org-end-of-subtree))))
        (with-current-buffer buf
          (insert "* " heading "\n")
          (org-insert-time-stamp (org-current-time) t t)
          (insert " Timeline generated\n"))
        (while (progn (forward-line 1) (< (point) end))
          (funcall 'rel-org-maybe-copy-ts-item buf))
        (with-current-buffer buf
          (org-back-to-heading)
          (forward-line 1)))
      (org-switch-to-buffer-other-window buf))))

(provide 'rel-org-config)
