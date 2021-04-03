(defun neg-nums(lst)
	(cond
		((null (cdr lst)) nil)
		((< (car lst) 0) (cons (car lst) (neg-nums (cdr lst))))
		(t (neg-nums (cdr lst)))))