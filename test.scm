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

(display "\ntest 1.1\n")
(test-atom? 123 #t)
(newline)

(display "\ntest 2.1\n")
(test-atom? '(123) #f)
(newline)

(define (test-variable-duper source count expected)   
  (if (equal? (variable-duper source count) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 1.2\n")
(test-variable-duper 1 5 '(1 1 1 1 1))
(newline)

(display "\ntest 2.2\n")
(test-variable-duper '(1) 2 '('(1)'(1)))
(newline)

(define (test-duper-merger list1 list2 expected)   
  (if (equal? (duper-merger list1 list2) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 1.3\n")
(test-duper-merger '(1 2 3) '(4 5 6) '(1 2 3 4 5 6))
(newline)


(define (test-super-duper source count expected)   
  (if (equal? (super-duper source count) expected)
    (display "passed")
    (display "failed")))

(display "\ntest 1.4\n")
(test-super-duper 123 1 123)
(newline)

(display "\ntest 2.4\n")
(test-super-duper 123 2 123)
(newline)

(display "\ntest 3.4\n")
(test-super-duper '() 1 '())
(newline)

(display "\ntest 4.4\n")
(test-super-duper '() 2 '())
(newline)

(display "\ntest 5.4\n")
(test-super-duper '(x) 1 '(x))
(newline)

(display "\ntest 6.4\n")
(test-super-duper '(x) 2 '(x x))
(newline)

(display "\ntest 7.4\n")
(test-super-duper '(x y) 1 '(x y))
(newline)

(display "\ntest 8.4\n")
(test-super-duper '(x y) 2 '(x x y y))
(newline)

(display "\ntest 9.4\n")
(test-super-duper '((a b) y) 3 '((a a a b b b) (a a a b b b) (a a a b b b) y y y))
(newline)

(display "\ntest 10.4\n")
(test-super-duper '(((a))) 2 '(((a a) (a a)) ((a a) (a a))))
(newline)