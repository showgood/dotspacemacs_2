(add-to-list 'load-path "~/dotspacemacs/hydra")
(require 'hydra)

;;https://github.com/abo-abo/hydra/wiki/Emacs
;; I tweak a bit to map to the vi keybinding
(global-set-key
 (kbd "C-n")
 (defhydra hydra-move
   (:body-pre (next-line))
   "move"
   ("j" next-line)
   ("k" previous-line)
   ("l" forward-char)
   ("h" backward-char)
   ("w" forward-word)
   ("b" backward-word)
   ("a" beginning-of-line)
   ("e" move-end-of-line)
   ("v" scroll-up-command)
   ;; Converting M-v to V here by analogy.
   ("V" scroll-down-command)
   ("z" recenter-top-bottom)))

(global-set-key (kbd "C-c m")
(defhydra hydra-transpose (:color red)
"Transpose"
("c" transpose-chars "characters")
("w" transpose-words "words")
("o" org-transpose-words "Org mode words")
("l" transpose-lines "lines")
("s" transpose-sentences "sentences")
("e" org-transpose-elements "Org mode elements")
("p" transpose-paragraphs "paragraphs")
("t" org-table-transpose-table-at-point "Org mode table")
("q" nil "cancel" :color blue)))
