c     Pi example in fortran 77
c     Implemented and tested with OpenWatcom 1.9 on FreeDOS 1.2
c
c     Owain Kenwy, 2017

      program pi

      implicit none

      real*8         step, x, s, mypi, start, finish, elapsed
      integer        narg, larg, iargc, igetarg
      integer        numsteps, i
      character*32   instr
      integer*2      hrs,mins,sec,hsec

c     Number of iterations
      numsteps = 100000000

c     Process arguments.
      narg = iargc()
      if (narg .ge. 2) then
         larg = igetarg(1, instr)
         read(instr,*) numsteps
      end if

c     Print usual info
      write(*,'(A)') 'Calculating PI using:'
      write(*,'(A,1I16,A)') '                  ',numsteps, ' slices'

c     OpenWatcom specific timing code
      call gettim(hrs,mins,sec,hsec)
      start = (3600*hrs) + (60*mins) + sec + (hsec/100.0d0)
     
      s = 0.0d0
      step = 1.0d0/numsteps

c     Main loop
      do i = 1, numsteps
        x = (i - 0.5d0) * step
        s = s + 4.0d0/(1.0d0 + (x*x))
      end do
 
      mypi = s * step

c     OpenWatcom specific timing code
      call gettim(hrs,mins,sec,hsec)
      finish = (3600*hrs) + (60*mins) + sec + (hsec/100.0d0)

      elapsed = finish - start

c     Output pi
      write(*,'(A,1F12.10A)') 'Obtained value of PI: ',mypi
      write(*,'(A,1F12.2A)') 'Time taken:           ',elapsed,' seconds'

      end
