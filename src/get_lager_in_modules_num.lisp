(defun get_lager_in_modules_num(num)
	(cond 
		((>= num 0) (+ num 1))
		((< num 0) (- num 1))))