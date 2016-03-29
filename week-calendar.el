;;
;; Tips:
;;   - http://stackoverflow.com/questions/4242012/how-do-i-add-dates-in-emacs-using-emacs-lisp
;;   - https://www.emacswiki.org/emacs/InsertingTodaysDate
;;   - http://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Calculations.html#Time-Calculations

(require 'calendar)

;; pattern SDD DD==digit
(defvar *pattern* "\\bS\[0-9\]\\{2\\}\\b"
  "pattern to match S{DD}")


(string-match-p *pattern* "S12")
(string-match-p *pattern* "12")
(string-match *pattern* " s12 ") ;; curious: it's not case-sensitive
(string-match *pattern* "W12")
(string-match *pattern* "bla_S12_bla")


(defun weekno (word)
  "extract the week number from a word such as S42"
  (if (eq 0 (string-match *pattern* word))
      (string-to-int (substring word 1))))

(substring "S12" 1)
(weekno "S42")


(format-time-string "%Y-%m-%d")
(format-time-string "%Y-%U" (current-time))

(defun current-year ()
  "return the current year"
  ;; (string-to-int (format-time-string "%Y")))
  (caddr (calendar-current-date)))

(defun date-from-weekno (weekno &optional year)
  "Get the date from a weekno. Hanlde the year case"
  (let ((year (current-year)))
    (calendar-gregorian-from-absolute
     (calendar-iso-to-absolute (list weekno 1 year)))))

(date-from-weekno 13)

;; TODO
;; - encode-time from date-from-weekno
;; - format-time-string
;; - read word from buffer
;; - insert-date


(calendar-current-date)
(caddr '(3 26 2016))
(current-year)


(current-time)
(encode-time 0 35 18 29 3 2016)
(encode-time 0 0 0 17 10 2016)

(calendar-gregorian-from-absolute (calendar-iso-to-absolute '(42 1 2016)))

(calendar-iso-date-string (list 3 26 2016))
(calendar-iso-read-date)
(calendar-iso-goto-week)
