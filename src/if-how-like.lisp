(defun how-alike(x y)
	(if (or (= x y) (equal x y)) 'the_same
		(if (and (oddp x) (oddp y)) 'both_odd
			(if (and (evenp x) (evenp y)) 'both_even
				'different))))