#!/bin/bash 
case "$1" in
	--data) echo "dzisiejsza data to: $(date)";;
	--logs)for (( c=1; c<=100; c++))
					do 
						echo "plik$c.txt, $0, $(date)" > plik$c.txt
					done;;
esac
