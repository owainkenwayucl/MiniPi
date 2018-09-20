$num_steps = 1000;

$num_steps = &MacPerl'Ask("Enter number of slices:", $num_steps);

$total_sum = 0.0;
$step = 1.0/$num_steps;

$beginning = time();

for ($i = 0; $i < $num_steps; $i++) {
  $x = ($i + 0.5) * $step;
  $total_sum += 4.0 / (1.0 + ($x * $x));
}

$p = $total_sum * $step;

$elapsed = time() - $beginning;

$result = sprintf("Obtained value of PI: %.16g\nTime taken: %.16g seconds\n", $p, $elapsed);

&MacPerl'Answer($result);