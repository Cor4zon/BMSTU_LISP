(defun get-nums(lst)
	(cond
		((null (cdr lst)) nil)
		((and (> (car lst) 1) (< (car lst) 10)) (cons (car lst) (get-nums (cdr lst))))
		(t (get-nums (cdr lst)))))


(defun get-nums(lst boardA boardB)
	(cond
		((> boardA boardB) (get-nums lst boardB boardA))
		((null (cdr lst)) nil)
		((and (> (car lst) boardA) (< (car lst) boardB)) (cons (car lst) (get-nums (cdr lst) boardA boardB)))
		(t (get-nums (cdr lst) boardA boardB))))