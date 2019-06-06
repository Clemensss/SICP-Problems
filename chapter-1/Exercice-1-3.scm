;Exercise 1.3 section 1.1.6

(define (largesquare x y z)
    (cond((< x y z)(sum-squares y z)) 
	 ((< y x z)(sum-squares x z))
	 ((< z x y)(sum-squares x y))))
(define (square x)(* x x))
(define (sum-squares x y)
    (+ (square x) (square y)))
(print(largesquare 2 3 4))
