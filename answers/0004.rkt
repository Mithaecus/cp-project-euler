#lang racket

(require racket/list)

(define (is-palindrome? l)
    (begin 
        (define reversed-l (reverse l)))
        (if (equal? (first l) (first reversed-l))
            (or 
                (if (> (length l) 1)
                    (is-palindrome? (cdr l))
                    #f)
                (if (equal? (length l) 0)
                    #t
                    (void)))
            #f))

(define numbers-A (sequence->list (in-inclusive-range 1 999)))
(define numbers-B (sequence->list (in-inclusive-range 1 999)))

(is-palindrome? '(1 2 1))