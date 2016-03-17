(global-linum-mode t)
(global-company-mode t)
(load "~/dotspacemacs/myOrg.el")
(set-face-attribute 'default nil :font "-*-Monaco-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")
(set-frame-font "-*-Monaco-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1" nil t)
(load "~/dotspacemacs/eshell.mac.el")

(load "~/dotspacemacs/abbrev")
(load "~/dotspacemacs/runCurrentFile.el")
(load "~/dotspacemacs/shell_abbrev")
(load "~/dotspacemacs/alias")
(load "~/dotspacemacs/functions")
(load "~/dotspacemacs/keys")
(load "~/dotspacemacs/myCal")
(load "~/dotspacemacs/switch-window.el")
;; (load "~/dotspacemacs/company.el")
(load "~/dotspacemacs/dired+.el")
(load "~/dotspacemacs/visual-regexp/visual-regexp.el")
(load "~/dotspacemacs/visual-regexp-steroids/visual-regexp-steroids.el")
(load "~/dotspacemacs/helm-dash/helm-dash.el")
(load "~/dotspacemacs/typeless.el")
(load "~/dotspacemacs/myhydra.el")

(load "~/dotspacemacs/keyfreq.el")
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(load "~/dotspacemacs/projectile.el")
;; (require 'company)

;; ;; (add-hook 'after-init-hook 'global-company-mode)

;; ;; ;; Don't enable company-mode in below major modes, OPTIONAL
;; (setq company-global-modes '(not eshell-mode comint-mode erc-mode rcirc-mode))
;; (setq company-ispell-dictionary (file-truename "~/dotspacemacs/english-words.txt"))

;; (add-to-list 'company-backends 'company-ispell)
;; (add-to-list 'company-backends-org-mode 'company-ispell)
;; ;; "text-mode" is a major mode for editing files of text in a human language"
;; ;; most major modes for non-programmers inherit from text-mode
;; (defun text-mode-hook-setup ()
;;   ;; make `company-backends' local is critcal
;;   ;; or else, you will have completion in every major mode, that's very annoying!
;;   (make-local-variable 'company-backends)

;;   ;; company-ispell is the plugin to complete words
;;   (add-to-list 'company-backends 'company-ispell)

;;   ;; OPTIONAL, if `company-ispell-dictionary' is nil, `ispell-complete-word-dict' is used
;;   ;;  but I prefer hard code the dictionary path. That's more portable.
;;   (setq company-ispell-dictionary (file-truename "~/dotspacemacs/english-words.txt")))

;; (add-hook 'text-mode-hook 'text-mode-hook-setup)

;; (defun toggle-company-ispell ()
;;   (interactive)
;;   (cond
;;    ((memq 'company-ispell company-backends)
;;     (setq company-backends (delete 'company-ispell company-backends))
;;     (message "company-ispell disabled"))
;;    (t
;;     (add-to-list 'company-backends 'company-ispell)
;;     (message "company-ispell enabled!"))))
