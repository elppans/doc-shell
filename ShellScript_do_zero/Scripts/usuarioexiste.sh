#!/bin/bash

if id -u "$1" > /dev/null 2>&1; then
        echo "Utilizador existe"
else
        echo "O utilizador especificado não existe"
	exit 0
fi
