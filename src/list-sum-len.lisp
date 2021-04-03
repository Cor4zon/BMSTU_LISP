(defun list-sum-len(lst)
	(cond
		((null (cdr lst)) (length (car lst)))
		(t (+ (length (car lst)) (list-sum-len (cdr lst))))))