(defun get-table(lst1 lst2)
	(mapcar #'list lst1 lst2))

(defun get-symbol-key-notes(lst)
	(mapcar #'(lambda (x) (if (symbolp (car x)) (cons x nil))) lst))

(defun without-nil(lst)
	(cond
		((null lst) nil)
		((car lst) (cons (car lst) (without-nil (cdr lst))))
		(t (without-nil (cdr lst)))))

(defun final-func(lst1 lst2)
	(without-nil (get-symbol-key-notes (get-table lst1 lst2))))

