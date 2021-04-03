(defun get-last-odd(lst)
	(get-first-odd (reverse lst)))

(defun get-first-odd(lst)
	(cond
		((null lst) nil)
		((oddp (car lst)) (car lst))
		(t (get-first-odd (cdr lst)))))