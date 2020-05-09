(define (summe term a next b)
    (define (iter a ergebnis)
	(if (> a b) ergebnis
	    (iter (next a) (+ (term a) ergebnis))))
    (iter a 0))

(define (inc x) (+ x 1))
(define (kubik x) (* x x x))
(define (kubik-summe a b) (summe kubik a inc b))

(display (kubik-summe 1 10))
