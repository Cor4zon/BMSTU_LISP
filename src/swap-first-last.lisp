
(defun delete-last(lst)
	(reverse (cdr (reverse lst))))

(defun delete-first(lst)
	(cdr lst))

(defun get-center(lst)
	(delete-first (delete-last lst)))

(defun swap-first-last(lst)
	(append (last lst) (get-center lst) (list (car lst))))