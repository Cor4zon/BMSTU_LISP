(defun get-square-lst(lst)
	(cond
		((null (car lst)) Nil)
		(t (append (* (car lst) (car lst)) ((get-square-lst(cdr lst)))))))