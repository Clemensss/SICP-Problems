(define (produkt term a naechstes b)
    (if(> a b)
	1
	(* (term a)
	    (produkt term (naechstes a) naechstes b))))
(define (id x)(x))
(define (square x)(* x x))


(define (pi p)
    
    )
