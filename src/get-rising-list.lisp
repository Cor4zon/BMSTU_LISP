(defun get-rising-list(numOne numTwo)
	(cond
		((>= numOne numTwo) (list numTwo numOne))
		((<  numOne numTwo) (list numOne numTwo))))