;;; mw-screen-server.el --- integration of Emacs and GNU screen

;; Copyright (C) 2003  Michael Weber <michaelw@foldr.org>
;;
;; parts of the documentation (no code) taken from screenserver.el by
;; Ben Jansens <ben@orodu.net>

;; Author:	Michael Weber <michaelw@foldr.org>
;; Version:	20030214
;; Keywords:	processes, unix

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; This provides a mechanism by which you can run emacs in server mode
;; in a screen session.  When emacs is run, it will automatically
;; switch to the screen window with emacs server running.  When
;; finished in the buffer (C-x #), this will automatically switch the
;; user back to the screen window they originated from.
;;
;; This code does roughly the same as screenserver.el, but does not
;; rely on temporary files for Emacs<->screen communication.  On the
;; downside, it therefore only works with gnuserv.
 
;; Additional features compared to screenserver.el:
;;   * handles multiple (client) editing session correctly (it
;;      switches each back to the screen where it was started from)
;;      
;;   * attaches to a running screen if not currently running inside
;;     one (also detaches if editing is finished)
;;
;;   * gracefully handles X vs. TTY Emacs servers

;;; Requirements:

;;   * GNUserv (mw-screen-server does NOT work with emacsclient since
;;     it lacks the "-eval" feature)
;;   * screen

;; Tested with:
;;   * GNU Emacs 21.3.50.1
;;   * gnuserv 3.12.4
;;   * screen 3.9.12

;;; Installation:

;; Copy the "e" editor script into a PATH directory.
;;
;; Put the following code into ~/.emacs:
;;
;;     (require 'mw-screen-server)
;;     (mw-screen-server-install)
;;     (gnuserv-start)
;;
;;
;; Set the EDITOR and/or VISUAL environment variables to ~/bin/editor:
;; 
;;     export EDITOR=~/bin/e			# for sh-like shells
;;     setenv EDITOR ~/bin/e			# for csh-like shells 
;;
;;
;; Prepare screen to start emacs in server mode.  Put a line like the
;; one below in ~/.screenrc:
;;
;;     screen -t emacs 0 emacs -nw
;; 
;; That's it!  If all went well, when you type "e somefile" in
;; another shell, it will switch to the server, and switch back when
;; you're done with it (C-x #).

;;; Known Issues:

;; * There is still a race condition when opening several files
;;   concurrently with gnuclient, of course (namely
;;   `mw-screen-server-last-window'), but I couldn't see an easy way
;;   around this. :(
;;
;; * Mixing calls of the "e" script given above with regular gnuclient
;;   calls causes gnuclient-driven buffers to jump back to the last
;;   activated screen window as well.
;;
;;   Possible fix: move "-eval (...)" into a wrapper around gnuclient :/

;;; Code:

(defun mw-screen-server-install ()
  "Install necessary screen-server hooks."
  (unless (eq window-system 'x)
    (add-hook 'gnuserv-visit-hook (function mw-screen-server-buffer-setup))
    (add-hook 'gnuserv-done-hook  (function mw-screen-server-buffer-switch))))


(defvar mw-screen-server-last-window nil
  "Global temporary storage for latest screen-server session id and
window.")

(eval-when-compile
  (defvar mw-screen-server-parent-window))

(defun mw-screen-server-window-set (window &optional sty)
  (setq mw-screen-server-last-window `(list (sty . ,sty)
					    (window . ,window)))
  (or window-system
      (concat "tty=" (getenv "STY"))))


(defun mw-screen-server-buffer-setup ()
  "Saves value of MW-SCREEN-SERVER-LAST-WINDOW in a buffer-local
variable and causes a switch to the screen window which is running
Emacs."
  (set (make-local-variable 'mw-screen-server-parent-window)
       mw-screen-server-last-window)
  (if (getenv "STY") ;; Emacs running inside a screen
      (shell-command "screen -X select emacs"))
  (let ((sty (cdr (assq 'sty mw-screen-server-parent-window)))
	(win (cdr (assq 'window mw-screen-server-parent-window))))
    (if (and sty win)
	(message "Editing for window %d of screen session %s..." win sty))))


(defun mw-screen-server-buffer-switch ()
  "Calls screen with appropriate arguments to switch to the buffer
which was active when the edit session started."
  (if mw-screen-server-parent-window
      (let ((sty (cdr (assq 'sty mw-screen-server-parent-window))))
	(cond ((null sty) ;; Buffer attached from outside of a screen
	       (message "Detaching from screen...")
	       (shell-command "screen -X detach"))
	      ))))


(provide 'mw-screen-server)
;;; mw-screen-server.el ends here
