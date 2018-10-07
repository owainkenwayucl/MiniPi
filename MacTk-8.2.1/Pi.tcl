proc calc_pi {num_slices} {
	puts "Calculating Pi with:"
	puts "  $num_slices slices"

	set total_sum 0
	set step [expr 1.0/$num_slices]

	set start [clock clicks]

	for {set i 0} {$i < $num_slices} {incr i} {
		set x [ expr ($i + 0.5) * $step ]
		set total_sum [ expr $total_sum + (4.0/(1.0 + ($x * $x)))]
	}

	set p [expr $total_sum * $step]
	set finish [clock clicks]

	set elapsed [expr ($finish - $start)/1000000.0]

	puts [format "Obtained value of Pi: %.16g" $p]
	puts [format "Time taken: %.16g seconds" $elapsed]
}

