(define (square x)(* x x))

(define (even? x)
    (= (remainder n 2) 0)
)

(define (fast-expt a b n)
    (cond ((= n 1) a)
	  ((even? n) (fast-expt (* a (square b)) b (/ n 2)))
	  (else (fast-expt (* a b) b (- n 1)))
    )
)

(define (fast-expt-iter b n)
    (fast-expt 1 b n)
)

(print "x:")
(define x (read))

(print "n:")
(define n (read))

(print(fast-expt-iter x n ))
