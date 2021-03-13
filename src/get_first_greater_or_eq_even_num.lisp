(defun get_first_greater_or_eq_even_num(num)
	(cond 
		((= (mod num 2) 0) num)
		(T (+ num 1))))