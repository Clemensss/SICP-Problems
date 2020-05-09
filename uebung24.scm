(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (prime-factor x div num)
      (if (> (remainder x div) 0) num
	(prime-factor (/ x div) div (+ num 1))))

(define (car z)(prime-factor z 2 0))
(define (cdr z)(prime-factor z 3 0))

(define pair (cons 10 20))

(print (cdr pair))
(print (car pair))
