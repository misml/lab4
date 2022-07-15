#!/bin/bash 
case "$1" in
	--data|-d) echo "dzisiejsza data to: $(date)";;
	--logs|-l) if [ "$2" == "30" ]
				then
				for (( c=1; c<=$2; c++))
					do 
						echo "plik$c.txt, $0, $(date)" > plik$c.txt
					done
			elif [ "$1" == "--logs" ]
				then 
				for (( c=1; c<=100; c++))
					do 
						echo "plik$c.txt, $0, $(date)" > plik$c.txt
					done
			fi
			;;
	--help|-h) echo "Dostepne opcje:"
			echo
			echo "--data"
			echo "--logs"
			echo "--logs 30"
			echo "--help";;
esac
