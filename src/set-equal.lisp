(defun set-equal(setA setB)
	(if (equal (sort setA #'<) (sort setB #'<)) t))