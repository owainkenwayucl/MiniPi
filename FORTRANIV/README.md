# Fortran IV on the PDP-8

The version of the FORTRAN compiler that comes with the `os8` package on Debian/Ubuntu is broken and doesn't make valid binaries.  I highly recommend making use of the images distributed by TangentSoft here: 

https://tangentsoft.com/pidp8i/wiki?name=Home

(scroll down to "OS/8 RK05 Media" and download the `boot` image and mount it as `rk0`)

Once you have a working compiler you should copy `PI.FT` to the system (easiest may be copy/pasting into the terminal!) and can then either compile + run it:

```
.R F4
PI,PI,PI<PI

.R LOAD
PI<PI$

.EXE PI
```
*(Noting that the `$` above is pressing the `<escape>` key)*

Or do it in one step with:

```
.R F4
PI/G$
```
*(Noting that the `$` above is pressing the `<escape>` key)*


