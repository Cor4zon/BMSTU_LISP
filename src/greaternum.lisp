(defun greater-num(lst num)
	(cond
		((> (car lst) num) (car lst))
		((null (cdr lst)) num)
		(t (greater-num (cdr lst) num))))