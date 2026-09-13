; very simple suite to demonstrate super-duper

; adding tests to this is REQUIRED! 

; It is highly recommended to test each function

; It is highly recommended to follow the pattern shown here: 
;  https://github.com/BoiseState/CS354-resources/tree/master/andre/examples/scheme/test.scm


(load "super-duper.scm")


(define (test-atom? n expected)   
  (if (equal? (atom? n) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 1\n")
(test-atom? 123 #t)
(newline)

(display "\ntest 2\n")
(test-atom? '(123) #f)
(newline)

(define (test-variable-duper source count expected)   
  (if (equal? (variable-duper source count) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 3\n")
(test-variable-duper 1 5 '(1 1 1 1 1))
(newline)

(define (test-super-duper source count expected)   
  (if (equal? (super-duper source count) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 4\n")
(test-super-duper 123 1 123)
(newline)

(display "\ntest 5\n")
(test-super-duper 123 2 123)
(newline)

(display "\ntest 6\n")
(test-super-duper '() 1 '())
(newline)

(display "\ntest 7\n")
(test-super-duper '() 2 '())
(newline)

(display "\ntest 8\n")
(test-super-duper '() 2 '())
(newline)