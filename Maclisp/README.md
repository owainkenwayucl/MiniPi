# PI Example in Maclisp

This has been tested on ITS (https://github.com/PDP-10/its)

## File:

 * `calcpi lisp` - core algorithm.
 * `pi lisp` - wraper (to call `(quit)` etc).
 * `pi dumper` - lisp program to generate `ts pi`.

## To compile:

1. Generate fasl files:

```none
:complr calcpi lisp
:kill
:complr pi lisp
:kill
```

2. Run `pi dumper` to generate `ts pi`

```
:lisp pi dumper
```

You can then run it for 250 steps with `:pi`.

Alternatively load directly into Maclisp:

```lisp
(load "calcpi lisp")
(calcpi 340)
```

Or load the fasl file into Maclisp

```lisp
(fasload calcpi)
(calcpi 340)
```


