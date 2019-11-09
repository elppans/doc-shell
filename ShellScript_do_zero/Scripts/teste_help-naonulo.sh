#!/bin/bash

HLP=$1
 if [ "$HLP" > "0" ]; then
case $1 in
	--help|-h)
	echo -e "help"
	exit 0
esac
else
echo "VAZIO"
fi

###
# outros comandos a seguir no Script
###
