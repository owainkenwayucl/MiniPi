# Version of the Python Pi example compatible with Python 2 and 3 to faciliate
# Benchmarking.

# Dr Owain Kenway

import time
import sys

num_steps = 10000000

if len(sys.argv) > 1:
	num_steps = int(sys.argv[1])

print("Calculating PI with: " + str(num_steps) + " slices")

total_sum = 0
step = 1.0 / num_steps

start = time.time()

# Use a while loop to avoid range/xrange behaviour changes.
i = 1
while (i <= num_steps):
	x = (i - 0.5) * step
	total_sum += 4.0/(1.0 + x * x)
	i += 1

p = total_sum * step

stop = time.time()

print("Obtained value of PI: " + str(p))
print("Time taken: " + str(stop - start) + " seconds")
