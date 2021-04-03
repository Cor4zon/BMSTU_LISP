(defun Mymember(item lst)
	(cond
		((null lst) nil)
		((eql item (car lst)) lst)
		(t (Mymember item (cdr lst)))))