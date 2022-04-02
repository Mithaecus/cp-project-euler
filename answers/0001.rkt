#lang racket/base

(require "_solution.rkt")

(answer
    #:description 
    "
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 

    The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.
    "

    #:input 
    1000

    #:solution 
    (begin 
        (let ()
            (define (multiples-of-x-below-n x n (ans 0) (filter 0))
                (displayln (string-append "DEBUG | x: " (number->string x) " n: " (number->string n) " ans: " (number->string ans)))
                (if (> x n) 
                    ans
                    (multiples-of-x-below-n x (- n x) (+ ans n))))

            (define (sum x y)
                (+ x y))

            (lambda (x)
                (sum (multiples-of-x-below-n 3 x) 
                    (multiples-of-x-below-n 5 x)))))
)
