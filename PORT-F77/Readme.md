# Cross platform Fortran (77) implementation 

## Overview

Implementation in F77 intended to compile with a variety of compilers (OpenWatcom on FreeDOS, Gfortran on Linux etc.  This is achieved by using shim libraries.

## Build (OpenWatcom F77, FreeDOS)

To compile with `wmake`:

```none
C:\HOME\SOURCE\MINIPI\PORT-F77\>wmake
```

To clean the build:

```none
C:\HOME\SOURCE\MINIPI\PORT-F77\>wmake /c clean
```

## Build (Gfortran, Linux)

To compile with `make`:

```none
$ make -f Makefile.gnu 
```

To clean the buils:

```none
$ make -f Makefile.gnu clean
```

