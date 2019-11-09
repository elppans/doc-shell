#!/bin/bash

#NotNull
if [ -z "$1" ];then
	echo -e 'Especifique o nome de um usuário,\nPara determinar um usuário padrão para o Login Gráfico e configurar o "Samba"!'
	exit 0
fi
#NotNull

#Exist USR
if id -u "$1" > /dev/null 2>&1; then
#IDUE
IDU=$(id -u $1)
if [ "$IDU" -gt "999" ] >> /dev/null ;then
	echo -e "Foi escolhido o usuário \"$1\" para a configuração do sistema..."
	read -t 5
else
	echo -e 'Não é um usuário válido, deve digitar um nome de usuário "Normal" padrão!'
	exit 0
fi
#IDUE
else
        echo "O utilizador especificado não existe"
	exit 0
fi
#Exist USR

