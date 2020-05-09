(define (summe term a naechstes b)
    (if(> a b)
	0
	(+ (term a)
	    (summe term (naechstes a) naechstes b))))

(define (yding k n)
    (cond ((or (equal? k 0)
	      (equal? k n)) 1)

	  ((odd? k) 4)
	  (else 2)))

(define (inc x) (+ x 1))

(define (simpson f a b n)
    (define (term k) 
	(* 
	    (f (+ a (* (/ (- b a) n) k)))
	    (yding k n)))

    (* (/ (/ (- b a) n) 3)
	(summe term a inc n)))
	
(define (kubik x)(* x x x))

(print (simpson kubik 0 1 100))

