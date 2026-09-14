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
        (cons 
        variable 
        (variable-duper variable (- count 1)))
    ))

;variable duper returns a list so we need to combine lists instead of making a list of lists using con
(define (duper-merger list1 list2)
    (if (null? list1)
        list2
        (if (null? list2)
        list1
        (cons 
        (car list1)
        (duper-merger (cdr list1) list2)) ;merges list one into list two 
    )))

(define (super-duper source count)
    ;if the source is an atom we instantly return that value
    (if (atom? source)
        source
        ;base case is an empty list
        (if (null? source)
            ;an empty list is an empty list
            '()
            ;recursive case occurs when source is not empty
            (duper-merger ;merges the end result of the next two functions
            (variable-duper (super-duper (car source) count) count) ;duplicates the value inside the car of the source 
                                                                    ;super duper is called to do recursive copy of any lists handed to the function
                                                                    ;if you just hand (car source) it will not do a deep copy (ask me how I know lol)
            (super-duper (cdr source) count ));recursively calls super-duper on the rest of the list 
        )))


