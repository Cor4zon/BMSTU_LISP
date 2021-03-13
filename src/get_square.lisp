(defun get_square(sideA sideB hight)
	(cond
		((<= sideA 0) 'err)
		((<= sideB 0) 'err)
		((<= hight 0) 'err)
		(T (* (/ (+ sideA sideB) 2) hight))
	)
)