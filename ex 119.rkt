;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 119|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Andrew Tran Ex. 119

; A List-of-Boolean is one of:
; - empty
; - (cons BooleanValue List-of-Boolean)
; interp. a List-of-Boolean represents some list of true/false values

; List-of-boolean -> boolean
; to take a list of boolean and determine if all them in the list are true
(check-expect (all-true (list true false true)) false)
(check-expect (all-true (list true true true)) true)
(check-expect (all-true true) true)
(check-expect (all-true false) false)
(define (all-true lob) 
  (cond
    [(empty? lob) true]
    [(boolean? lob) (if (boolean=? true lob) true false)]
    [(boolean=? true (first lob)) (all-true (rest lob))]
    [else false]))


; List-of-boolean -> boolean
; To take a list of boolean and determine if at least one of them in the list is true
(check-expect (one-true (list true false true)) true)
(check-expect (one-true (list false false false)) false)
(check-expect (one-true true) true)
(check-expect (one-true false) false)
(define (one-true lob) 
  (cond
    [(empty? lob) false]
    [(boolean? lob) (if (boolean=? true lob) true false)]
    [(boolean=? false (first lob)) (one-true (rest lob))]
    [else true]))