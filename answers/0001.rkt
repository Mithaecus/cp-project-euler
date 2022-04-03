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
            (define (sum-multiples-of-x-below-n 
                        #:step             step 
                        #:max-number       max-number 
                        #:current-number   (current-number 0) 
                        #:total-sum        (total-sum 0)
                        #:ignored-multiple (ignored-multiple 99999))

                (cond
                    [(>= current-number max-number) 
                        total-sum]                                          ; Exit recursive function
                    [(equal? (modulo current-number ignored-multiple) 0) 
                        (sum-multiples-of-x-below-n 
                            #:step              step 
                            #:max-number        max-number 
                            #:current-number    (+ current-number step) 
                            #:total-sum         total-sum 
                            #:ignored-multiple  ignored-multiple)]          ; Filter ignored multiples
                    [else 
                        (sum-multiples-of-x-below-n 
                            #:step             step 
                            #:max-number       max-number 
                            #:current-number   (+ current-number step) 
                            #:total-sum        (+ current-number total-sum) 
                            #:ignored-multiple ignored-multiple)]))         ; Normal functionality

            (lambda (input)                                                 ; Calculate the solutions answer
                (+ (sum-multiples-of-x-below-n 
                        #:step             3
                        #:max-number       input) 
                   (sum-multiples-of-x-below-n 
                        #:step             5 
                        #:max-number       input
                        #:ignored-multiple 3)))))
)