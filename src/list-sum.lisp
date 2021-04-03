(defun list-sum(lst)
	(cond
		((null (cdr lst)) (car lst))
		(t (+ (car lst) (list-sum(cdr lst))))))



(defun list-sum(lst)
	(cond
		((null lst)) 0
		(t (+ (car lst) (list-sum (cdr lst))))))
