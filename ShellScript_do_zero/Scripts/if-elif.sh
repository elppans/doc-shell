#!/bin/bash



#if to case
if [ $@ = "-h" ] || [ $@ = "--help" ]; then
	PA="$1"
   elif [ $@ = "-nw" ] || [ $@ = "--net-who" ]; then
	PA="$1"
else
	echo "Foi para o else..."
	echo "Valor digitado: $PA"
fi
#if to case

	echo "Valor digitado: $PA"
