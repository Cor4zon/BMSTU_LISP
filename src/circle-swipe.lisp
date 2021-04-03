(defun swipe-left(lst)
	(append (cdr lst) (list (car lst))))

(defun circle-swipe-left(lst k)
	(cond
		((= k 0) lst)
		(t (circle-swipe-left (swipe-left lst) (- k 1)))))

(defun swipe-right(lst)
	(cons (nth (- (length lst) 1) lst) (subseq lst 0 (- (length lst) 1))))

(defun circle-swipe-right(lst k)
	(cond
		((= k 0) lst)
		(t (circle-swipe-right (swipe-right lst) (- k 1)))))
