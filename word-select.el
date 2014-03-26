;; Try to find a way and/or use a function/command to select a word ('under' the
;; cursor)

use_variable_with_

(defun sword ()
  "Print the word that point is on. Quite similar as 'current-word' as a ELisp command."
  (interactive)
  (prin1 (current-word))
)


