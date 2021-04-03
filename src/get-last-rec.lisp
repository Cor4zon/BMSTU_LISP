(defun get-last-rec(lst)
	(cond
		((null (cdr lst)) (car lst))
		(t (get-last-rec(cdr lst)))))