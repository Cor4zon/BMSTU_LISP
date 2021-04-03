(defun allodd(lst)
	(cond
		((null (cdr lst)) (if (null (car lst)) Nil T))
		((oddp (car lst)) (allodd (cdr lst)))
		(t Nil)))