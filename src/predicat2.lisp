(defun pred1(x)
	(and (numberp x) (plusp x)))

(defun pred2(x)
	(and (plusp x) (numberp x)))