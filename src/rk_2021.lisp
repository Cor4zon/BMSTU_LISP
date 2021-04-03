; Даётся структурированный список, 
; нужно двумя способами вывести 
; на экран множество целых чисел,
; входящих в заданный диапазон


(defun get-values(lst a b)
	(cond
		((> a b) (get-values lst b a))
		((null lst) nil)
		((and (numberp (car lst)) (> (car lst) a) (< (car lst) b))
			(cons (car lst) (get-values (cdr lst) a b)))
		((listp (car lst)) (append (get-values (car lst) a b) (get-values (cdr lst) a b)))
		(t (get-values (cdr lst) a b))))


(defun get-set(lst)
	(cond
		((null lst) nil)
		((eq (member (car lst) (cdr lst)) nil) (cons (car lst) (get-set (cdr lst))))
		(t (get-set (cdr lst)))))