program pi
  implicit none

  call est_pi(10000000)
end program pi

subroutine est_pi(num_steps)

  implicit none

  double precision              :: step, x, s, mypi, start, stop
  integer,intent(in)            :: num_steps
  integer                       :: i

! Output start message

  write(*,*) "Calculating PI using:"
  write(*,*) "                  ",num_steps, " slices"
  write(*,*) "                  ",1," process"

! Initialise time counter and sum: set step size

  call cpu_time(start)
  s = 0d0
  step = 1.0d0 / num_steps

  do i = 1, num_steps
    x = (i - 0.5d0) * step
    s = s + 4.0d0 / (1.0d0 + x*x)
  end do

! Evaluate PI from the final sum value, and stop the clock

  mypi = s * step
  call cpu_time(stop)

! output value of PI and time taken
! note cpu_time is only specified as being microsecond res

  write(*,*) "Obtained value of PI: ", mypi
  write(*,*) "Time taken:           ",(stop-start), " seconds"

end 

