;practice

(define (square x)(* x x))

;or

(define square
  (lambda(x)(* x x)))

(define (average x y)
  (/ (+ x y) 2))

(define (mean-square x y)
  (average (square x )
           (square y)))
           
(define (abs x)
  (cond((< x 0)(- x))
       ((= x 0)0)
       ((> x 0) x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))
      
      
;blockstructure

(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       .001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try(improve guess))))
  (try 1))
