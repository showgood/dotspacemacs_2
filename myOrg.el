(setq org-src-fontify-natively t)
(setq org-startup-with-inline-images t)
(setq org-agenda-files (quote ("~/Dropbox/org/gtd/"
                               "~/Dropbox/org/Inbox.org"
                               "~/Dropbox/org/habit.org"
                               "~/Dropbox/org/birthday.org"
                               "~/codingOrg/Leetcode/index.org"
                               "~/myOrg/javascript/js.org")))
(load "~/dotspacemacs/org-journal.el")
(setq org-journal-dir "~/Dropbox/org/journalOrg/")
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file "~/Dropbox/org/Inbox.org")
(setq org-mobile-directory "~/Dropbox/Apps/mobileorg")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/fromMobile.org")
(setq org-archive-location "~/Dropbox/org/logbook.org::* Archived")

(setq org-ditaa-jar-path "~/soft/ditaa0_9.jar")
(setq org-plantuml-jar-path "~/soft/plantuml.8031.jar")
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)
    (ruby . t)
    (plantuml . t)
    (ditaa . t)
    (sh . t)
    (python . t)
    (dot . t)
    (emacs-lisp . t)
    ))

(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Dropbox/org/Inbox.org")
               "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n%a\n")
              ("r" "respond" entry (file "~/Dropbox/org/Inbox.org")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :immediate-finish t)
              ("n" "note" entry (file "~/Dropbox/org/Inbox.org")
               "* %? :NOTE:\n:PROPERTIES:\n:CREATED: %U\n:END:\n%a\n")
              ("j" "Journal" entry (file+datetree "~/git/org/diary.org")
               "* %?\n%U\n")
              ("w" "org-protocol" entry (file "~/Dropbox/org/Inbox.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/Dropbox/org/Inbox.org")
               "* MEETING with %? :MEETING:\n:PROPERTIES:\n:CREATED: %U\n:END:\n")
              ("a" "Appointment" entry (file "~/Dropbox/org/Inbox.org")
               "* Appointment with %? :APPOINTMENT:\n:PROPERTIES:\n:CREATED: %U\n:END:\n")
              ("p" "Phone call" entry (file "~/Dropbox/org/Inbox.org")
               "* PHONE %? :PHONE:\n:PROPERTIES:\n:CREATED: %U\n:END:\n")
              ("c" "Contacts" entry (file "~/Dropbox/org/contacts.org")
                "* %(org-contacts-template-name) \n:PROPERTIES:\n:EMAIL: %(org-contacts-template-email)\n:END:\n")
              ("h" "Habit" entry (file "~/Dropbox/org/Inbox.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))
                                        ; Targets include this file and any file contributing to the agenda - up to 9 levels deep

(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;http://orgmode.org/manual/Code-evaluation-security.html
(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "ditaa")))  ; don't ask for ditaa
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

;; http://dept.stat.lsa.umich.edu/~jerrick/org_agenda_calendar.html
;; (add-hook 'org-finalize-agenda-hook
;;           (lambda ()
;;             (save-excursion
;;               (color-org-header "Personal:"  "green")
;;               (color-org-header "Birthdays:" "gold")
;;               (color-org-header "Holidays:" "chocolate"))))

(defun color-org-header (tag col)
  ""
  (interactive)
  (goto-char (point-min))
  (while (re-search-forward tag nil t)
    (add-text-properties (match-beginning 0) (point-at-eol)
                         `(face (:foreground ,col)))))
; follow the link using enter
(setq org-return-follows-link t)

(setq org-agenda-start-on-weekday 0)

;;http://doc.norang.ca/org-mode.html
;; Remove empty LOGBOOK drawers on clock out
(defun bh/remove-empty-drawer-on-clock-out ()
  (interactive)
  (save-excursion
    (beginning-of-line 0)
    (org-remove-empty-drawer-at "LOGBOOK" (point))))

(add-hook 'org-clock-out-hook 'bh/remove-empty-drawer-on-clock-out 'append)
(require 'org-contacts)
(setq org-contacts-files (quote ("~/Dropbox/org/contacts.org")))
