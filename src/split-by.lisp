(defun split-by(lst num)
	(cond
		((<= (length lst) num) lst)
		(t (list (subseq lst '0 num) (split-by (nthcdr num lst) num)))))

;;;; плохо
(defun split-by(lst n)
	(if (consp lst)
		(cons
			(subseq lst 0 n)
			(split-by (nthcdr n lst) n))
		'() ))


10
3
2
1 
0