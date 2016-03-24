;; (add-to-list 'load-path "~/dotspacemacs/semantic-refactor")
;; (require 'srefactor)
;; (require 'srefactor-lisp)

;; OPTIONAL: ADD IT ONLY IF YOU USE C/C++. 
(semantic-mode 1) ;; -> this is optional for Lisp

(add-to-list 'load-path "~/dotspacemacs/function-args")
(require 'function-args)
(fa-config-default)

;;http://www.josephlisee.com/2015/02/21/exploring-clang-format/
(defun clang-format-before-save ()
  (add-hook 'before-save-hook 'clang-format-before-save)
  (interactive) (when (eq major-mode 'c++-mode) (clang-format-buffer)))

;; Install hook to use clang-format on save
(add-hook 'before-save-hook 'clang-format-before-save)

(add-to-list 'load-path "~/dotspacemacs/cpputils-cmake-20160313.1658/")
(require 'cpputils-cmake)

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))
;; OPTIONAL, somebody reported that they can use this package with Fortran
(add-hook 'c90-mode-hook (lambda () (cppcm-reload-all)))
;; OPTIONAL, avoid typing full path when starting gdb
(global-set-key (kbd "C-c C-g")
                '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))
;; OPTIONAL, some users need specify extra flags forwarded to compiler
;; (setq cppcm-extra-preprocss-flags-from-user '("-I/usr/src/linux/include" "-DNDEBUG"))
(add-to-list 'load-path "~/dotspacemacs/emacs-cmake-project/")
(require 'cmake-project)

(defun maybe-cmake-project-hook ()
  (if (file-exists-p "CMakeLists.txt") (cmake-project-mode)))
(add-hook 'c-mode-hook 'maybe-cmake-project-hook)
(add-hook 'c++-mode-hook 'maybe-cmake-project-hook)
