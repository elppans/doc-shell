#!/bin/bash

#Paste
if [ -d ~/CentOS1 ]; then
	echo "A pasta existe!"
#File
if [ -e ~/CentOS/CentOS-6.6-x86_64-bin-DVD1-ks.iso1 ]; then
	echo "O arquivo existe!"
else
	echo "o arquivo não existe"
fi
#File
else
	echo "A pasta não existe!"
fi
#Paste
