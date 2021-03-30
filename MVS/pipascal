//PIPSCL JOB (PASCAL),
//             'Estimate Pi',
//             CLASS=A,
//             MSGCLASS=A,
//             TIME=1440,REGION=9000K,
//             MSGLEVEL=(1,1)
//CALCPI   EXEC PASCG,PARM.GO='//STACK=8400K'
//COMPILE.SYSIN DD *
program CalcPi(input,output);
(* Estimate PI *)
var step, x, sum, p:real;
    N,i:integer;
begin
 read(N);
 writeln(' Calculating Pi using ', N, ' slices');
 sum := 0.0;
 step := 1.0/N;
 writeln(' Step: ', step);
 for i:= 1 to N do
 begin
   x := (i - 0.5) * step;
   sum := sum + (4.0/(1.0 + x * x));
 end;
 p:= sum * step;
 writeln(' Estimated value of Pi: ', p);
end.
/*
//GO.OUTPUT DD SYSOUT=*,DCB=(LRECL=160,BLKSIZE=16000,RECFM=FBA)
//GO.SYSIN  DD *
200000
/*
//
