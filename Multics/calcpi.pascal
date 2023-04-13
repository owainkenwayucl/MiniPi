program calcpi(input,output);
{* Estimate Pi *}
var step, x, sum, p:real;
    N,i:integer;
begin
    writeln('Enter number of steps:');
    read(N);
    writeln('Calculating Pi using ',N,' slices');
    sum := 0.0;
    step := 1.0/N;
    for i := 1 to N do
    begin
        x := (i - 0.5) * step;
        sum := sum + (4.0/(1.0 + (x*x)));
    end;
    p := sum * step;
    writeln('Estimated value of Pi: ',p);
end.

