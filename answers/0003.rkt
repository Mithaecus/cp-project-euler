#lang racket/base

(require "_solution.rkt")

(answer
    #:description 
    "
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
    "

    #:input 
    9

    #:solution 
    (begin 
        (let ()
            (define (prime-factors number (test-factor 2) (factors (cons 1 '()))) 
                (if (equal? number test-factor)
                    (cons number factors)                                      ; Return known factors
                    (if (equal? (modulo test-factor number) 0)
                        (prime-factors (/ number test-factor)                  ; Found a prime number
                                       2 
                                       factors)
                        (prime-factors number                                  ; Test another possible factor
                                       (+ test-factor 1) 
                                       factors))))
            
            (define (get-largest-number numbers)
                (car numbers))

            (lambda (x) (get-largest-number (prime-factors x))))))
