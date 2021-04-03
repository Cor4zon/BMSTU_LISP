(defun sumall(x)
	(cond
		((zerop x) 0)
		(t (+ x (sumall (- x 1))))))