(defun my-sort(lst)
	(if (null lst) lst)
		(cons (apply #'min lst) (my-sort (remove (apply #'min lst) lst))))