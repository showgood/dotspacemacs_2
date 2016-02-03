(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(defun sum-cua-rectangle ()
  ;; Treat the content of current cua rectangle as numbers, and
  ;; calculate sum.
  (interactive)
  (message
   (number-to-string
    (reduce (lambda (x y) (+ x y))
            (mapcar (lambda (n) (string-to-number n))
                    (cua--extract-rectangle))))))


; replace current word or selection using vim style for evil mode
; author: showgood
(defun evil-replace-word-selection()
  "replace current word or selection using vim style for evil mode"
  (interactive)
  (if (use-region-p)
      (let (
            (selection (buffer-substring-no-properties (region-beginning) (region-end))))
        (if (= (length selection) 0)
          (message "empty string")
          (evil-ex (concat "'<,'>s/" selection "/"))
        ))
    (evil-ex (concat "%s/" (thing-at-point 'word) "/"))))

;; copy whole line without selection
;; http://emacs-fu.blogspot.com.au/2009/11/copying-lines-without-selecting-them.html
(defadvice kill-ring-save (before slick-copy activate compile) "When called
  interactively with no active region, copy a single line instead."
           (interactive (if mark-active (list (region-beginning) (region-end)) (message
                                                                                "Copied line") (list (line-beginning-position) (line-beginning-position
                                                                                                                                2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defun Open ()
  "Show current file in desktop (OS's file manager).
URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2015-06-12"
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (w32-shell-execute "explore" (replace-regexp-in-string "/" "\\" default-directory t t)))
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux")
    (let ((process-connection-type nil)) (start-process "" nil "xdg-open" "."))
    ;; (shell-command "xdg-open .") ;; 2013-02-10 this sometimes froze emacs till the folder is closed. ⁖ with nautilus
    )))

;; insert current time
;; source: http://emacswiki.org/emacs/InsertingTodaysDate
(defun nnow ()
  (interactive)
  (insert (format-time-string "%Y-%b-%d %H:%M:%S")))

;; insert today date
(defun ddate ()
  (interactive)
  (insert (format-time-string "%Y-%b-%d")))
(require 'ido) ; part of emacs

(load "~/dotspacemacs/hot-filelist")

(defun xah-open-file-fast ()
  "Prompt to open a file from `hot-filelist'.
URL `http://ergoemacs.org/emacs/emacs_hotkey_open_file_fast.html'
Version 2015-04-23"
  (interactive)
  (let ((ξabbrevCode
         (ido-completing-read "Open:" (mapcar (lambda (ξx) (car ξx)) hot-filelist))))
    (find-file (cdr (assoc ξabbrevCode hot-filelist)))))

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))


; support open link for evernote or outlook etc
(defun org-pass-link-to-system (link)
  (if (string-match "^[a-zA-Z0-9]+:" link)
      (browse-url link)
    nil)
  )

(add-hook 'org-open-link-functions 'org-pass-link-to-system)

(defun open-my-inbox()
  (interactive)
  (find-file "~/Dropbox/org/Inbox.org")
  )

(defun open-my-todo-list()
  (interactive)
  (find-file "~/Dropbox/org/gtd/todo.org")
  )

(defun my-key-binds()
  (interactive)
  (find-file "~/dotspacemacs/keys.el")
  )

(defun open-notes-dir()
  (interactive)
  (find-file "~/myOrg")
  )

;;soure:https://github.com/redguardtoo/emacs.d/blob/master/lisp/init-clipboard.el
;; only copy file name (not including path)
(defun cp-filename-of-current-buffer ()
  "Copy file name (NOT full path) into the yank ring and OS clipboard"
  (interactive)
  (let (filename)
    (when buffer-file-name
      (setq filename (file-name-nondirectory buffer-file-name))
      (kill-new filename)
      (message "filename %s => clipboard & yank ring" filename))))


;; this copy full path
(defun prelude-copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))

    ;; (let a (buffer-name))
    ;; (message a)
    (let ext (file-name-extension filename))
    (message ext)
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))

;; copy whole line
;; http://stackoverflow.com/questions/88399/how-do-i-duplicate-a-whole-line-in-emacs
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)

(defun my-join-line()
  (interactive)
  (move-beginning-of-line 1)
  (next-line 1)
  (delete-indentation)
)
