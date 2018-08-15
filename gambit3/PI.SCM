;; We don't seem to have an endswith function
(define (endswith? s e)
  (if (> (string-length s) (string-length e)) 
    (string-ci=? e (substring s (- (string-length s) (string-length e)) (string-length s) )) 
  )
)

;; Strip gsi.exe and program name off of the arguments.
(define (command-line-args) 
  (define a (argv))
  (if (> (length a) 0)
    (if (endswith? (car a) "gsi.exe")
      (set! a (cdr a))
    ) 
  )
  (set! a (cdr a)) ; remove program name
  a
)

;; Get the time in float seconds
(define (current-time-seconds)
  (runtime)
)

;; Calculate pi for some n
(define (calc-pi n)
  (define sum 0.0d0)
  (define st (/ 1.0d0 n))
  (define x 0.0d0)
  (do ((i 1 (+ i 1))) ((> i n))
    (set! x (* (- i 0.5d0) st))
    (set! sum (+ sum (/ 4.0d0 (+ 1.0d0 (* x x)))))
  )
  (* sum st)
)

;; Effectively our main.
(define n 1000000)
(define arguments (command-line-args))
(if (> (length arguments) 0)
  (set! n (string->number (car arguments)))
)

(display "Calculating PI using:\n  ")
(display n)
(display " slices\n  1 process\n")


(define start (current-time-seconds))
(define p (calc-pi n))
(define stop (current-time-seconds))
(define runt (- stop start))

(display "Obtained value of PI: ")
(display p)
(display "\n")
(display "Time taken: ")
(display runt)
(display " seconds")

(exit)
