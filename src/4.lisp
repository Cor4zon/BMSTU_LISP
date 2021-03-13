; 1 3 5
; 1 5 3
(defun check-sequence(numOne numTwo numThree)
	(cond 
		((< numTwo numOne numThree))
		((> numTwo numOne numThree))))