#!/bin/bash

PDVRE=$(lsb_release -rs | cut -d "." -f "1")
PDVVE=12

if [ $PDVRE -eq $PDVVE ];then
echo "Versao do sistema $PDVVE Ok!"
else
echo "Versao do sistema diferente!"
fi
