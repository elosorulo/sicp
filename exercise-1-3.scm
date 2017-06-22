;Procedure definitions
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (<= x y) (not (> x y)))

(define (sum-of-sq-of-largest-tuple x y z)
(cond
  ((and (<= x y) (<= x z)) (sum-of-squares y z))
  ((and (<= y x) (<= y z)) (sum-of-squares x z))
  ((and (<= z x) (<= z y)) (sum-of-squares x y))))

;Test
(and (= 13 (sum-of-sq-of-largest-tuple 1 2 3))
     (= 13 (sum-of-sq-of-largest-tuple 1 3 2))
     (= 13 (sum-of-sq-of-largest-tuple 2 1 3))
     (= 13 (sum-of-sq-of-largest-tuple 2 3 1))
     (= 13 (sum-of-sq-of-largest-tuple 3 1 2))
     (= 13 (sum-of-sq-of-largest-tuple 3 2 1))
     (= 18 (sum-of-sq-of-largest-tuple 3 3 3)))