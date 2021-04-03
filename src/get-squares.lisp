(defun get-squares(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (* (car lst) (car lst)) (get-squares (cdr lst))))
		((listp (car lst)) (append (get-squares (car lst)) (get-squares (cdr lst))))
		(t (get-squares (cdr lst)))))