(define morse (string->list ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.."))
(define (main) 
(
    (define (loop x)
	(if (null? x) 
	  0
	  ((loop (car morse)))))
))
