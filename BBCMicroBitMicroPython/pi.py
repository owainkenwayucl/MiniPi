# Our canonical pi example for the BBC Micro:Bit in MicroPython.
# Owain Kenway

# Flash this onto the device in mu, open the REPL and run picalc(250).
# If you set REPL_only to True it won't scroll on the display.
# i.e. picalc(250, True)

from microbit import *

# Our main function.
def picalc(n = 250, REPL_only = False):

# We don't seem to have utime? Luckily microbit.running_time()
# gives us ms since boot.
    start = running_time()

    ts = 0.0
    step = 1.0/n

    for i in range(n,0,-1):
        x = (i - 0.5) * step
        ts += 4.0/(1.0 + x*x)

    p = ts * step
    
    stop = running_time()
    
    taken = (stop - start)/1000.0 
    
    pr = 'Estimated Pi: ' + str(p)
    pt = 'Time taken: ' + str(taken) + ' seconds'
 
    # Dump output to the REPL.
    print(pr)
    print(pt)
    
    # Scroll output on display until user presses Ctrl-c.
    while (not REPL_only):
        display.scroll(pr + pt)
        
