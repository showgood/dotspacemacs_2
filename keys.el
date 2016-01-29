(global-set-key (kbd "<f2>") 'org-clock-goto)
(global-set-key (kbd "<f3>") 'org-clock-in)
(global-set-key (kbd "<f4>") 'org-clock-out)

(global-set-key (kbd "<f5> c") 'compile)
(global-set-key (kbd "<f5> r") 'recompile)
(global-set-key (kbd "<f6>") 'helm-mini)

(global-set-key (kbd "<f7> c") 'calendar)
(global-set-key (kbd "<f7> g") 'gnus)

;open a list of shell abbreviation
(global-set-key (kbd "<f7> s") 'xah-shell-commands)

(global-set-key (kbd "<f7> l") (lambda () (interactive) (list-matching-lines (current-word))))

;open a list of hot file
(global-set-key (kbd "<f7> h") 'xah-open-file-fast)
(global-set-key (kbd "<f7> r") 'org-refile)

(global-set-key (kbd "<f8>") 'split-window-below)

(global-set-key (kbd "<f9> b") 'helm-mini)
(global-set-key (kbd "<f9> f") 'spacemacs/helm-find-files)
(global-set-key (kbd "<f9> p") 'helm-projectile-find-file)
(global-set-key (kbd "<f9> e") 'eshell)
(global-set-key (kbd "<f9> a") 'spacemacs/helm-project-do-ag)
(global-set-key (kbd "<f9> r") 'rename-buffer)
(global-set-key (kbd "<f9> q") 'fill-paragraph)
(global-set-key (kbd "<f9> k") 'my-key-binds)
(global-set-key (kbd "<f9> c") 'cp-filename-of-current-buffer)

(global-set-key (kbd "<f10>") 'org-capture)
(global-set-key (kbd "<f11>") 'org-agenda)
(global-set-key (kbd "<f12>") 'org-todo)

(global-set-key (kbd "\C-c +") 'evil-numbers/inc-at-pt); mimic C-a in vim
(global-set-key (kbd "\C-c -") 'evil-numbers/dec-at-pt); mimic C-x in vim
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "\C-ca") 'org-agenda)
(global-set-key (kbd "\C-cc") 'org-capture)
(global-set-key (kbd "\C-co") 'evil-replace-word-selection)

(global-set-key (kbd "\C-cl") 'org-store-link)
(global-set-key (kbd "\C-cr") 'org-refile)
(global-set-key (kbd "\C-cj") 'org-journal-new-entry)
