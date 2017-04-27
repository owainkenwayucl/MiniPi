# Pi-Sharp-Basic
##The UCL-RITS Pi example written in S'-Basic for the Sharp PC-1251

In UCL RITS we have a repo of programs calculating Pi in a wide variety of different languages (https://github.com/UCL-RITS/pi_examples), mostly for fun.  While on holiday, I implemented the same algorithm in the cut down version of BASIC (called S'-BASIC) on my Sharp PC-1251 pocket computer.  

![Photo of my PC-1251](https://pbs.twimg.com/media/Cj2vnvjXAAAzkeP.png:orig)

With N set to 1000, it takes about 3 minutes and 47 seconds to estimate Pi.

I've kept this separate from the original repo, because:
 * It doesn't conform to the defined output structure (we only have a one line LCD to start with!).
 * It doesn't do timing.
 * It has to be run on a machine with S'-BASIC or S-BASIC.

Copying the code to your Sharp PC is left as an exercise to the reader.

I've done some tests and Bywater BASIC (bwbasic in the Ubuntu repos) also successfully executes this program.

The code is small enough that I originally posted it on Twitter: https://twitter.com/owainkenway/status/739812854933643264
