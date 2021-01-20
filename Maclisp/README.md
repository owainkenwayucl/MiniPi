# PI Example in Maclisp

This has been tested on ITS (https://github.com/PDP-10/its)

## File:

 * `calcpi lisp` - core algorithm.
 * `estpi lisp` - wraper (to call `(quit)` etc).
 * `estpi dumper` - lisp program to generate `ts estpi`.

## To compile:

1. Generate fasl files with `:complr` (make sure to `:kill` the background `:complr` process when it's finished):

```none
*:complr calcpi lisp

LISP COMPILER 2000 [in LISP 2154]
:PROCED 
*
Job COMPLR finished
:kill
*:complr estpi lisp

LISP COMPILER 2000 [in LISP 2154]
:PROCED 
*
Job COMPLR finished
:kill
```

2. Run `estpi dumper` to generate `ts estpi`

```
*:lisp estpi dumper
:kill 

```

You can then run it for 10000 steps with `:estpi`.

```
*:estpi

Calculating PI with 10000. slices
Estimated value of PI: 3.14159232
Time elapsed: 3.7001953 seconds
NIL
:KILL 
*
```

Alternatively load directly into Maclisp:

```lisp
(load "calcpi lisp")
T 
(calcpi 1000.)

3.14159262 
(benchpi 1000.)
Calculating PI with 1000. slices
Estimated value of PI: 3.14159262
Time elapsed: 2.89941406 seconds

NIL 
```

Or load the fasl file into Maclisp

```lisp
(fasload calcpi)
126146 
(calcpi 1000.)
3.14159262 
(benchpi 1000.)
Calculating PI with 1000. slices
Estimated value of PI: 3.14159262
Time elapsed: 0.400390625 seconds

NIL
```


