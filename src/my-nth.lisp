(defun my-nth(n lst)
	(cond
		((> n (length lst)) nil)
		((< n 0) 'error)
		((= n 0) (car lst))
		(t (my-nth (cdr lst) (- n 1)))))