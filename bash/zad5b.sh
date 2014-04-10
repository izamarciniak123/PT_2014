#!/bin/bash

if [[ $# < 2 ]]; then
	echo 'zbyt mala ilosc parametrow'
else
	CO=$1
	for i in $@; do
		if [[ $CO != $i ]]; then
			cp $CO $i
		fi
	done
fi