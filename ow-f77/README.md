# OpenWatcom F77 on DOS

## Compiling:

To compile the version with the DOS/4GW extender, issue `wmake` at the DOS prompt.

To compile a version without, issue `wmake pi16.exe`.

To use the `clean` target, you have to additionally pass `wmake` the `/c` flag (or `-c`).

i.e.

```
C:\HOME\SOURCE\MINIPI\OW-F77> wmake /c clean
```

