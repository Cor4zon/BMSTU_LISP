(defun get-n-sum(lst n)
	(cond
		((= n 0) 0)
		((OR (= n 1) (null (cdr lst))) (car lst))
		(t (+ (car lst) (get-n-sum (cdr lst) (- n 1))))))


; от n-аргумента функции до последнего >= 0.
(defun get-n-sum-from(lst n)
	(cond
		((> n (length lst)) 0)
		((< n 0) 'error)
		((> n 0) (get-n-sum-from (cdr lst) (- n 1)))
		((= n 0) (if (car lst) 
					(+ (car lst) (get-n-sum-from (cdr lst) n)) 0))))