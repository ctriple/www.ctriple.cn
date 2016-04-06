(define tolerance 0.0001)

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try fist-guess))

; cos
(fixed-point cos 1.0)

; y = sin y + cos y
(fixed-point (lambda (y) (+ (sin y) (cos y)))
             1.0)
