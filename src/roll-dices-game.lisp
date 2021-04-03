(defun game(lst)
	(cond
		((is-first-win-7-11 lst) (format t "~$ ~$" 'first-win lst))
		((is-second-win-by-7-11 lst) (format t "~$ ~$" 'second-win lst))
		((is-first-win-by-sum lst) (format t "~$ ~$" 'first-win lst))
		((is-second-win-by-sum lst) (format t "~$ ~$" 'second-win lst))
		((is-draw lst) (game (append (roll-dices) (roll-dices))))
		((first-get-double lst) (game (append (roll-dices) (list (nth '2 lst) (nth '3 lst)))))
		((second-get-double lst) (game (append (list (nth '0 lst) (nth '1 lst)) (roll-dices))))))

(defun roll-dices()
	(list (+ 1 (random 6)) (+ 1 (random 6))))

(defun get-first-player-sum(lst)
	(+ (car (subseq lst 0 2)) (car (cdr (subseq lst 0 2)))))

(defun get-second-player-sum(lst)
	(+ (car (subseq lst 2)) (car (cdr (subseq lst 2)))))

(defun is-draw(lst)
	(if (eq (get-first-player-sum lst) (get-second-player-sum lst)) t))



(defun is-first-win-7-11(lst)
	(if (OR (eq (get-first-player-sum lst) 7) (eq (get-first-player-sum lst) 11))
		 t))

(defun is-second-win-by-7-11(lst)
	(if (OR (eq (get-second-player-sum lst) 7) (eq (get-second-player-sum lst) 11))
		 t))

(defun first-get-double(lst)
	(if (OR (first-get-double-1 lst) (first-get-double-6 lst))
		 	t))

(defun first-get-double-1(lst)
	(if (AND (eq (car lst) 1) (eq (nth 1 lst) 1)) t))

(defun first-get-double-6(lst)
		(if (AND (eq (car lst) 6) (eq (nth 1 lst) 6)) t))

(defun second-get-double(lst)
	(if (OR (second-get-double-1 lst) (second-get-double-6 lst)) 
			t))

(defun second-get-double-1(lst)
	(if (AND (eq (nth 2 lst) 1) (eq (nth 3 lst) 1)) t))

(defun second-get-double-6(lst)
	(if (AND (eq (nth 2 lst) 6) (eq (nth 3 lst) 6)) t))

(defun is-first-win-by-sum(lst)
	(if (> (get-first-player-sum lst) (get-second-player-sum lst))
			t))

(defun is-second-win-by-sum(lst)
	(if (> (get-second-player-sum lst) (get-first-player-sum lst))
			t))


(game (0 0 0 0))