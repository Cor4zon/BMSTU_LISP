(defun swipe-two-elements(lst a b)
	(append (subseq lst 0 a) (list (nth b lst)) (subseq lst (+ a 1) b) 
					(list (nth a lst)) (subseq lst (+ b 1))))