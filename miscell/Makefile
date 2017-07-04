MC=miscellc

pi.csv: pi.mcl integ.csv Makefile
	$(MC) -i pi.mcl -o pi.csv

integ.csv: integ.sh Makefile
	chmod +x integ.sh
	./integ.sh

clean: 
	rm pi.csv integ.csv
