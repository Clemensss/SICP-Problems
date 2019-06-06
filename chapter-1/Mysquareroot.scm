;Not an exercise, but I tried to implement it
;by myself just to have a deeper understanding
;of what is going on in the section 1.1.7

(define (square x)
    (* x x))
(define (abs x)
    (if(< x 0)
	(- x)
	x))
(define (squareroot x guess)
    (if (good? x guess)
	guess
    (squareroot x (improve x guess)))) 
(define (root x)
    (squareroot x 1.0))
(define (improve x guess)
    (average (/ x guess) guess))
(define(average x y)
    (/ (+ x y) 2))
(define (good? x guess)
    (< (abs (- (square guess) x)) 0.000000001))
(define x 16)
(print(root x))
