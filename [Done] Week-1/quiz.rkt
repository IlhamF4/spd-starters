;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; produce true if first image width > second image width or first image height > second image height

(check-expect (larger? (triangle 15 "solid" "blue") (triangle 9 "solid" "red")) true)
(check-expect (larger? (rectangle 10 20 "solid" "blue") (rectangle 10 18 "solid" "red")) true)
(check-expect (larger? (rectangle 10 20 "solid" "blue") (rectangle 9 25 "solid" "red")) true)
(check-expect (larger? (square 9 "solid" "blue") (square 18 "solid" "red")) false)
(check-expect (larger? (rectangle 9 20 "solid" "blue") (rectangle 10 18 "solid" "red")) true)
(check-expect (larger? (rectangle 8 20 "solid" "blue") (rectangle 10 18 "solid" "red")) true)

;(define (larger? img1 img2) false) ;stub

;(define (larger? img1 img2) ;template
;  (... img1 img2))

(define (larger? img1 img2)
  (or (and (> (image-width img1)
              (image-width img2))
           (> (image-height img1)
              (image-height img2)))
      (> (image-width img1)
         (image-width img2))
      (> (image-height img1)
         (image-height img2))))