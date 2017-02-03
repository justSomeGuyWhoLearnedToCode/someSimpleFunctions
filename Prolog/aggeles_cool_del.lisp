;cool delete
;Chris Aggeles

(defun cooldel (element listIn)
	(cond ((null listIn) nil)
		((and(atom(car listIn))((equals (car listIn) element))) (cooldel (element (cdr listIn))))
		((and(atom(car listIn))((not(equals(car listIn) element)))) (append '(car listIn) (cooldel (element (cdr listIn)))))
		((listp(car listIn)) (append(cooldel (element (car listIn))) (cooldel(element (cdr listIn)))))))
		
		
;convert F to C
(defun convert (F)
	(* (- F 32) (/ 5 9)))
	
	
;rotate left
(defun rotateL (listIn)
	(append (cdr listIn) '(car listIn)))