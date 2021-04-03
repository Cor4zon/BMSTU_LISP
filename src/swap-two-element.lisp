
; допущение: индексы идут по возрастанию
(defun get-left-part(lst indexOne)
	(reverse (subseq (reverse lst) (- (length lst) (- indexOne 1)))))

(defun get-center-part(lst indexOne indexTwo)
	(subseq lst indexOne (- indexTwo 1)))

(defun get-right-part(lst indexTwo)
	(subseq lst indexTwo))

(defun swap-two-element(lst indexOne indexTwo)
	(append (get-left-part lst indexOne)
			(nth lst indexOne)
			(get-center-part lst indexOne indexTwo)
			(nth lst indexTwo)
			(get-right-part lst indexTwo)))


