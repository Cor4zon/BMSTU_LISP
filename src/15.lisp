(defun select-odd(lst)
	(mapcar #'(lambda (x) 
							(cond ((oddp x) x))) lst))


(defun select-odd(lst)
	(cond
		((null lst) nil)
		((oddp (car lst)) (cons (car lst) (select-odd (cdr lst))))
		(t (select-odd (cdr lst)))))


; вычисялет сумму всех нечетных
(defun select-odd(lst)
	(cond
		((null lst) 0)
		((oddp (car lst)) (+ (car lst) (select-odd (cdr lst))))
		(t (select-odd (cdr lst)))))

; вычисляет сумму всех четных

(defun select-sum-even(lst)
	(cond
		((null lst) 0)
		((evenp (car lst)) (+ (car lst) (select-sum-even (cdr lst))))
		(t (select-sum-even (cdr lst)))))



