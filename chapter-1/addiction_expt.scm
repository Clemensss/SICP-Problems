;functional programming at its best
;defining primitive procedures

;multiplication

(define (mul a b)
    (if (= b 0)
	0
	(+ a (mul a (- b 1)))
    )
)

(define (double n) (mul n 2))

(define (square x) (mul x x))

;----------------
;remainders

(define (remain-iter b a)
     (if(or (= b 1) (= b 0))
	b
      (remain-iter (- b a) a)
     ) 
)   

(define (remain-two n)
    (remain-iter n 2)
) 

(define (even? n)
    (= (remain-two n) 0)
)

;----------------
;division

(define (halve n)
    (div-iter 0 n 2)
)

(define (div-iter count b a)
    (if(= b 0) 
	count
      (div-iter (+ count 1) (- b a) a)
    ) 
)

;----------------
;fast-expt

(define (fast-expt b n)
    (cond ((= n 1) b)

          ((even? n)
		(square (fast-expt b (halve n)))
	  )

	  (else 
		(mul b (fast-expt b (- n 1)))
	  )
    )
)

(print "x and n")
(define x (read))
(define n (read))
(print (fast-expt x n))
