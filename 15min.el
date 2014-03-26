;; Example code from http://bzg.fr/learn-emacs-lisp-in-15-minutes.html

;; Enter in 'lisp-interaction-mode'
;;  - C-j to eval current sexpr
;;  - C-M-x to eval and print the result in the mini-buffer

(+ 2 (+ 1 1))

(setq my-name "Damien")

(insert "Hello!!")
(insert "Hello " my-name)

(defun hello() (insert "Hello " my-name))
hello

(hello)
Hello Damiennil

(defun hello(name) (insert "Hello " name))
hello
(hello "You")
Hello Younil

(switch-to-buffer-other-window "*test*")
#<buffer *test*>

(progn
  (switch-to-buffer-other-window "*test*")
  (hello "You"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
)
