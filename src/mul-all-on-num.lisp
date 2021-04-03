(defun mul-all-on-num(lst num)
	(mapcar #'(lambda (x) (* x num)) lst))

(defun mul-random-lst-on-num(lst num)
	(mapcar #'(lambda (x) (if (numberp x) (* x num) x)) lst))