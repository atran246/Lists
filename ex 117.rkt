;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 117|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Andrew Tran

;Ex 117

; A List-of-amounts is one of:
; - empty
; - (cons PositiveNumber List-of-amounts)
; interp. a List-of-amounts represents some amounts of money

; List-of-amounts -> number
; To take a list of numbers and add them together
(check-expect (sum (list 1 2 3 4 5)) 15)
(check-expect (sum (cons 0 empty)) 0)
(define (sum loa) 
  (cond
    [(empty? loa)...]
    [else
     (... (first loa) ... (sum (rest loa))...)]))