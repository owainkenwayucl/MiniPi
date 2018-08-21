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
