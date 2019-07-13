;Pure curiosity

(define(Acker x y)
    (cond((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (Acker (- x 1)
		     (Acker x (- y 1))))))
(print(Acker 1 3))
