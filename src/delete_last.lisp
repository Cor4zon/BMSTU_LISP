(get-list-without-last(lst)
	(cons
		(car lst) (if (> (length (cdr lst) 1)))))


(defun delete_end(list)                      
	(cond                                          
		((null (cdr list)) nil) ; список состоит из 1 элемента                       
		(t (cons (car list) (delete_end (cdr list))))))
