; Function to calculate Pi by the usual means
(defun calc-pi (n)
  (defvar x)
  (defvar step)
  (defvar s)

; We seem to need to do this separate from defvar otherwise things go wonky
; on subsequent calls.
  (setq x 0)
  (setq step (float (/ 1 n)))
  (setq s 0)

  (do ((i 1 (+ i 1))) ((> i n)) 
    (setq x (* (- i 0.5) step)) 
    (setq s (+ s (/ 4.0 (+ 1.0 (* x x )))))
  )
  (* step s)
)

; Because we are on a Mac, command-line arguments are meaningless.
(defun bench-pi (n)
  (format t "~%Calculating PI with\n  ~d slices\n  1 process\n" n)
  (defvar p)
  (defvar beg-t)
  (defvar end-t)
  (defvar elap-t)
  (setq beg-t (get-internal-run-time))
  (setq p (calc-pi n))
  (setq end-t (get-internal-run-time))
  (setq elap-t (float (/ (- end-t beg-t) internal-time-units-per-second)))
  (format t "~%Estimated value of PI: ~d\nTime Taken: ~d seconds\n\n" p elap-t)
)
