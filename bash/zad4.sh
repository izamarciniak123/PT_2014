#!/bin/bash
# zadanie 4
#./zadanie4.sh login_na_olimpie

if [[ $# < 1 ]]; then
	echo 'potrzebna wieksza ilosc parametrow'
	exit $?
fi

tar -czf bash.tar.gz *
if [[ -e bash.tar.gz ]]; then
	scp bash.tar.gz $1@olimp.mif.pg.gda.pl:~
fi

who > os_zalog
who | sort > os_zalog.alfabetycznie
head -3 os_zalog.alfabetycznie > log.head