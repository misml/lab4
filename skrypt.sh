#!/bin/bash 
case "$1" in
	--data|-d) echo "dzisiejsza data to: $(date)";;
	--logs|-l) if [ "$2" == "30" ]
				then
				for (( c=1; c<=$2; c++))
					do 
						echo "log$c.txt, $0, $(date)" > log$c.txt
					done
			elif [ "$1" == "--logs" ]
				then 
				for (( c=1; c<=100; c++))
					do 
						echo "log$c.txt, $0, $(date)" > log$c.txt
					done
			fi
			;;
	--help|-h) echo "Dostepne opcje:"
			echo
			echo "--data lub -d"
			echo "--logs lub -l"
			echo "--logs 30 lub -l 30"
			echo "--help lub -h"
			echo "--init lub -i";;
	--init|-i) git clone https://github.com/misml/lab4.git
			echo "klonowanie sie powiodlo";;
esac
