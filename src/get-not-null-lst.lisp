(defun get-not-null-lst(lst)
	(apply #'(lambda (x) (if (listp x) x)) lst))