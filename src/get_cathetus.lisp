(defun get_cathetus(cathetus_one hypotenuse)
	(cond
		((<= cathetus_one 0) 'err)
		((<= hypotenuse 0) 'err)
		((<= hypotenuse cathetus_one) 'err)
		(T (sqrt (- (* hypotenuse hypotenuse) (* cathetus_one cathetus_one))))
	)	
)
