(define (square x) (* x x))

(define (repeated f n)
    (define (inc x) (+ x 1))

    (define (repeat f g i n x)
      (if (= i n) 
	x 
	(repeat f g (g i) n (f x))))

    (lambda (x) (repeat f inc 0 n x)))

(display ((repeated square 10) 5))
