(define almost? (lambda (x y)
		 (if (< (- y x) 0.0001)
		   #t
		   #f)))

(define fixpunkt (lambda (f x)
	(if (almost? (f x) x) 
	  x
	  (fixpunkt f (f x)))))

(display (fixpunkt cos 1.0))
