#lang racket/base

(provide answer)

(define (answer #:description d #:input i #:solution s)
    (begin
        (displayln d)
        (displayln (string-append "Answer: " (number->string (s i))))))
