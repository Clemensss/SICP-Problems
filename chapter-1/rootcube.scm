;Exercise 1.7 section 1.1.7

(define(cube x)(* x x x))
(define(square x)(* x x))
(define(absolute x)
    (if(< x 0)(- x)x))
(define(root x)
    (cube-iter x 1.0))
(define(cube-iter x guess)
    (if(good? x guess) 
	guess
    (cube-iter x (improved x guess))))
(define(good? x guess)
    (<(absolute(- (cube guess) x)) 0.001))
(define(improved x guess)
    (newton x guess))
(define(newton x guess)
    (/ (+ (/ x (square guess)) (* guess 2)) 3))
(print(root 125)) 
    
