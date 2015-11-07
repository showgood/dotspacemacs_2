(load "~/dotspacemacs/cal-china-x.el")
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)

(setq other-holidays
      '((holiday-fixed 12 24 "picnic day")
        (holiday-fixed 12 28 "boxing day")
        (holiday-fixed 1 1 "元旦")
        (holiday-solar-term "清明" "清明节")
        (holiday-fixed 5 1 "劳动节")
        (holiday-lunar 5 5 "端午节" 0)
        (holiday-lunar 8 15 "中秋节" 0)
        (holiday-fixed 10 1 "国庆节")
        (holiday-fixed 10 2 "国庆节")
        (holiday-fixed 10 3 "国庆节")
        ;; for some reason this doesn't produce correct result
        ;; has to use (holiday-lunar)
        ;; (holiday-chinese 12 30 "大年三十")
        (holiday-lunar 12 30 "大年三十" 0)
        (holiday-chinese 1 1 "大年初一")
        (holiday-chinese 1 2 "大年初二")
        (holiday-chinese 1 3 "大年初三")
        (holiday-chinese 1 15 "元宵节")
        (holiday-fixed 11 3 "melbourne cup race")
        (holiday-fixed 12 25 "christmas")))

(setq calendar-holidays
      (append general-holidays local-holidays other-holidays))
