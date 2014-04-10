#!/bin/bash
#!/zad5a

if [[ $# -gt 0 ]]; then
	for i in $@; do
		if [[ -e $i ]]; then
			cat $i
		else
			echo 'Plik nieistnieje!'
		fi
		echo -e "\n-"
	done
else
	echo 'brak parametrow!'
fi