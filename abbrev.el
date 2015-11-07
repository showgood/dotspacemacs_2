(define-abbrev-table 'global-abbrev-table '(
    ;; math/unicode symbols
    ("8in" "∈")
    ("8nin" "∉")
    ("8inf" "∞")
    ("8luv" "♥")
    ("8smly" "☺")

    ;; email
    ("gm" "showgood21@gmail.com")

    ;; my own
    ("atm" "at the moment")
    ("stmt" "statement")
    ("sb" "somebody")
    ("sth" "something")

    ;; coding
    ("ustd" "using namespace std;")

    ;; computing tech
    ("8wp" "Wikipedia")
    ("8ms" "Microsoft")
    ("8g" "Google")
    ("8it" "IntelliType")
    ("8msw" "Microsoft Windows")
    ("8win" "Windows")
    ("8ie" "Internet Explorer")

    ;; normal english words
    ("8alt" "alternative")
    ("8char" "character")
    ("8def" "definition")
    ("8bg" "background")
    ("8kb" "keyboard")
    ("8ex" "example")
    ("8kbd" "keybinding")
    ("8env" "environment")
    ("8var" "variable")
    ("8ev" "environment variable")
    ("8cp" "computer")
    ("sth", "something")

    ;; emacs regex
    ("8d" "\\([0-9]+?\\)")
    ("8str" "\\([^\"]+?\\)\"")

    ;; shell commands
    ("8im" "convert -quality 85% ")

    ("8f0" "find . -type f -size 0 -exec rm {} ';'")
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)
