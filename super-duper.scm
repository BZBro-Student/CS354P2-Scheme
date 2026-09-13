;this is a comment


; psudo-code
; super-duper(source, count) {
; if (source.isAtom){
;    return source
; } else {
;  subject = '()
;  for i in range source {
;    for j in range count {
;     subject.add(source[i])
;  }
; } 
; return subject
;}
;    


(define (atom? source)
    (if (not (pair? source))
        #t 
        #f))


;duplicates the value passed to it count times    
(define (variable-duper variable count)
    ;base case is the end of the count or count = 0
    (if (= count 0)
        ;when a value is duplicated 0 times the result is an empty list
        '()
        ;recursive case occurs when count > 0
        (cons variable (variable-duper variable (- count 1)))))

(define (super-duper source count)
    ;if the source is an atom we instantly return that value
    (if (atom? source)
        source
        ;base case is an empty list
        (if (or (null? source))
            ;an empty list is an empty list
            '()
            ;recursive case occurs when source is not empty
            (cons (variable-duper (car source) (count)) (super-duper (cdr source) count )))))


