pi.exe: PI.o ouchgnu.o Makefile.gnu
	gfortran -o pi.exe ouchgnu.o PI.o 

PI.o: PI.F Makefile.gnu
	gfortran -c PI.F

ouchgnu.o: ouchgnu.f90 Makefile.gnu
	gfortran -c ouchgnu.f90

clean:
	rm -f *.exe *.o *.err
