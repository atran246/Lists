;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 118|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Andrew Tran, EX 118

; A List-of-numbers is one of:
; - empty
; - (cons Number List-of-numbers)
; interpret a List-of-Numbers represents some list of numbers

; List-of-numbers -> boolean
; to take a list of numbers and determine if all the numbers in the list are 
; positive
(check-expect (pos? (list 34 48 23 1)) true)
(check-expect (pos? (list 34 239 -2 3)) false)
(check-expect (pos? 1) true)
(check-expect (pos? -4) false)
(define (pos? lon)
   (cond 
    [(empty? lon) true]
    [(number? lon) 
     (if (< lon 0) false true)]
    [(number? (first lon)) 
     (if (< (first lon) 0) false (pos? (rest lon)))]))

