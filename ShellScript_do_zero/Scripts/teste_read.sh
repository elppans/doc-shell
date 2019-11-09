#!/bin/bash

echo "Digite outra palavra ou deixe o padrão!"

echo -e "teste"
read  -p "Digite o novo valor ou aperte ENTER para o padrão: " PALAVRA

if [ -z $PALAVRA ] 
then
PALAVRA=teste
read  -t 5 -p "Você escolheu a palavra: $PALAVRA"
else
echo
read  -t 5 -p "Você escolheu a palavra: $PALAVRA"
echo
fi

#echo "Você escolheu a palavra: $PALAVRA"
#sleep 5
