#!/bin/bash

###CASE 01
parametroXX(){
	clear
	echo -e '\b Escolha o nº do parametro (1-2)/(5-6), "0" para sair...'
read opcao
case $opcao in
	0) Parametro00 ;;
	1) Parametro01 ;;
	2) Parametro02 ;;
	5) Parametro05 ;;
	6) Parametro06 ;;
	*) "Opcao invalida" ; echo ; parametroXX ;;
esac
}

Parametro01(){
	clear
	echo -e '\n Parametro 01...'
	read -t 5
Parametro03
}

Parametro02(){
	clear
	echo -e '\n Parametro 02...'
	read -t 5
Parametro04
}
parametroXX
###CASE 01 - FIM

Parametro00(){
	clear
	echo -e '\n Parametro 00 (Sair)...'
	read -t 5
	exit 0
}


Parametro03(){
	clear
	echo -e '\n Parametro 03...'
	read -t 5
Parametro02
}

Parametro04(){
	clear
	echo -e '\n Parametro 04...'
	read -t 5
parametroXX
}

###CASE 02
Parametro05(){
	clear
	echo -e '\b Parametro 05.'
	echo -e '\b Escolha o nº do parametro (1-2)/(6-7)/(8-9)/(10), "0" para sair...'
#	echo -e '\b Digite (S) para sair.'
read opcao
case $opcao in
	0) Parametro00 ;;
	1) Parametro01 ;;
	2) Parametro02 ;;
	6) Parametro06 ;;
	7) Parametro07 ;;
	8) Parametro08 ;;
	9) Parametro09 ;;
	10) Parametro10 ;;
	*) "Opcao invalida" ; echo ; Parametro05 ;;
esac
}

Parametro06(){
	clear
	echo -e '\n Parametro 06...'
	read -t 5
Parametro07
}

Parametro07(){
	clear
	echo -e '\n Parametro 07...'
	read -t 5
Parametro05
}

Parametro08(){
	clear
	echo -e '\n Parametro 08...'
	read -t 5
parametroXX
}
Parametro05
###CASE 02 - FIM

###CASE 03
Parametro09(){
	clear
	echo -e '\n Parametro 09...'
	echo -e '\b Escolha o nº do parametro (1-5)/(10), "0" para sair...'
read opcao
case $opcao in
	0) Parametro00 ;;
	1) Parametro01 ;;
	5) Parametro05 ;;
	10) Parametro10 ;;
	*) "Opcao invalida" ; echo ; Parametro09 ;;
esac
}

Parametro10(){
if [ -e /var/cache/addgpg ]
			then
	echo -e '\n Parametro 10...'
	read -t 5
Parametro11

###CASE 04
Parametro11(){
	clear
	echo -e '\n Parametro 11...'
	echo -e '\b Escolha o nº do parametro (1-5-9), "0" para sair...'
read opcao
case $opcao in
	0) Parametro00 ;;
	1) Parametro01 ;;
	5) Parametro05 ;;
	9) Parametro09 ;;
	*) "Opcao invalida" ; echo ; Parametro11 ;;
esac
}
Parametro11
###CASE 04 - FIM
			else
	echo -e '\n Parametro 10...'
	read -t 5
Parametro09
fi

}

Parametro09
###CASE 03 - FIM

