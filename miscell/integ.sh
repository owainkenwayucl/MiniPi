#!/usr/bin/env bash
# Script to generate the intergral csv.

rm -f integ.csv
for a in `seq 1 65536`
do 
  echo "=((\$D\$1>=ROW()) * 1)*4/(1+((ROW()-0.5) * \$D\$2)^2)," >> integ.csv
done
