;rk1.lisp

;Дан смешанный, структурированный список 
;(т.е. любой элемент списка может быть: символ, число или список).

;Найти сумму четных чисел на всех уровнях заданного списка, 
;лежащих в заданном интервале [a, b].

;Добавить найденную сумму к исходному списку, 
;в качестве К-ого элемента верхнего уровня или в конец. 

;Если чисел нет, сообщить об этом.

;*Преобразовать исходный список в одноуровневый, 
;сохранив порядок, но удалив числа (для max-х баллов).

(defun get-even-sum(lst res a b)
	(cond
		((> a b) (get-even-sum lst res b a))
		((null lst) (if (> res 0) res 'no-numbers))
		((and (numberp (car lst)) (> (car lst) a) (< (car lst) b) (evenp (car lst))) 
			(get-even-sum (cdr lst) (+ res (car lst)) a b))
		((listp (car lst)) (+ (get-even-sum (car lst) 0 a b) (get-even-sum (cdr lst) res a b)))
		(t (get-even-sum (cdr lst) res a b))))







