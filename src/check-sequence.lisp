(defun check-sequence(numOne numTwo numThree)
	(cond
		((AND (>= numOne numTwo) (<= numOne numThree)) T)))