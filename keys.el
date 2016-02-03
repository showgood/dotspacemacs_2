(global-set-key (kbd "<f2>") 'org-clock-goto)
(global-set-key (kbd "<f3>") 'org-clock-in)
(global-set-key (kbd "<f4>") 'org-clock-out)

(global-set-key (kbd "<f5>") 'helm-mini)
;; join line (M-^)
;; (global-set-key (kbd "<f9> j") 'delete-indentation)
(global-set-key (kbd "<f5> j") 'my-join-line)
;; delete whole line (C-S-backspace)
(global-set-key (kbd "<f5> k") 'kill-whole-line)

;; toggle between hpp and cpp
(global-set-key (kbd "<f6> a") 'helm-projectile-find-other-file)
;; list the buffers for project
(global-set-key (kbd "<f6> b") 'helm-projectile)
;; find directory within project
(global-set-key (kbd "<f6> c") 'projectile-compile-project)
(global-set-key (kbd "<f6> d") 'helm-projectile-find-dir)
; find files within project (SPC-p-f)
(global-set-key (kbd "<f6> f") 'helm-projectile-find-file)
;; open the file under cursor within project (C-c p g)
(global-set-key (kbd "<f6> g") 'helm-projectile-find-file-dwim)
(global-set-key (kbd "<f6> o") 'helm-projectile-find-file-dwim-other-window)
; list all the reference for the current symbol at point
(global-set-key (kbd "<f6> r") 'helm-gtags-find-rtag)
;; search through project with grep
(global-set-key (kbd "<f6> s") 'helm-projectile-grep)
;; find definition using ggtags
(global-set-key (kbd "<f6> t") 'helm-gtags-find-tag)
;; run vc on root directory of project
(global-set-key (kbd "<f6> v") 'projectile-vc)

(global-set-key (kbd "<f7> a") 'org-archive-subtree)
(global-set-key (kbd "<f7> c") 'calendr)
;open a list of hot file
(global-set-key (kbd "<f7> f") 'xah-open-file-fast)
(global-set-key (kbd "<f7> g") 'gnus)
(global-set-key (kbd "<f7> l") (lambda () (interactive) (list-matching-lines (current-word))))
;open my keybinds file (this file)
(global-set-key (kbd "<f7> k") 'my-key-binds)
(global-set-key (kbd "<f7> r") 'org-refile)
;open a list of shell abbreviation
(global-set-key (kbd "<f7> s") 'xah-shell-commands)

(global-set-key (kbd "<f8>") 'delete-window)

(global-set-key (kbd "<f9> b") 'helm-mini)
; copy the filename(without path) for current buffer
(global-set-key (kbd "<f9> c") 'cp-filename-of-current-buffer)
;; copy current line
(global-set-key (kbd "<f9> d") 'duplicate-line)
(global-set-key (kbd "<f9> e") 'eshell)
; list all the files in current folder (SPC-f-f)
(global-set-key (kbd "<f9> f") 'spacemacs/helm-find-files)
(global-set-key (kbd "<f9> q") 'fill-paragraph)
(global-set-key (kbd "<f9> r") 'rename-buffer)

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
