(defun next(x1)
	(cond
		(x1 (cons (1 + (car x1))
			(next (cdr x1))))))