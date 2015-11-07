(global-set-key (kbd "<f8>") 'xah-open-file-fast) ; F8 to open a list of hot file
;; (global-set-key (kbd "<f9>") 'xah-shell-commands) ; F9 to open a list of shell abbreviation
;(global-set-key (kbd "<f7>") 'execute-extended-command); F7 to do M-x
(global-set-key  (kbd "<f7>") (lambda () (interactive) (list-matching-lines (current-word))))
(global-set-key (kbd "<f5>") 'org-clock-in);
(global-set-key (kbd "<f6>") 'org-clock-out);
(global-set-key (kbd "\C-c +") 'evil-numbers/inc-at-pt); mimic C-a in vim
(global-set-key (kbd "\C-c -") 'evil-numbers/dec-at-pt); mimic C-x in vim
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "\C-ca") 'org-agenda)
(global-set-key (kbd "\C-cc") 'org-capture)
(global-set-key (kbd "\C-co") 'evil-replace-word-selection)
(global-set-key (kbd "<f12>") 'org-refile)
(global-set-key (kbd "\C-cl") 'org-store-link)
(global-set-key (kbd "\C-cr") 'org-refile)
;; (global-set-key (kbd "Q") 'fill-paragraph) bad idea.. can't enter Q anymore
(global-set-key (kbd "\C-cj") 'org-journal-new-entry)
(global-set-key (kbd "<f9>") 'org-todo)
