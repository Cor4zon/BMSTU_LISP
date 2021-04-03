(defun power(x n)
	(cond
		((zerop n) 1)
		(t (* x (power x (- n 1))))))