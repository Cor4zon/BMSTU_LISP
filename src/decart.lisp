(defun decart-one-element(x lst)
	(cond
		((null lst) nil)
		(t (cons (cons x (car lst)) (decart-one-element x (cdr lst))))))

(defun decart(lstA lstB)
	(cond
		((null lstA) nil)
		(t (append (decart-one-element (car lstA) lstB) 
							(decart (cdr lstA) lstB)))))