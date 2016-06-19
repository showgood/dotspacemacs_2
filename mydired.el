;; https://www.masteringemacs.org/article/working-multiple-files-dired
(require 'find-dired)
(setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld"))

(require 'dired-x)
