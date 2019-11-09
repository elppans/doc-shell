###unity-lens-shopping Inicio
if (dpkg -l |grep 'ii  unity-lens-shopping')
	then
clear
unitylensshopping() {
	clear
	echo -e '\n Remover o aplicativo Amazon.'
	echo -e '\b Amazon. Atualmente e completamente inutil ja que nao usamos aqui no Brasil.'
	echo -e '\b Alem do que, isto aumenta a seguranca e privacidade do sistema\n\n'
	echo -e '\b Deseja continuar ou pular?'
	echo -e '\b Digite (C) para continuar.'
	echo -e '\b Digite (P) para pular.'
read opcao
case $opcao in
	C) Continuar ;;
	P) Pular ;;
	*) "Opcao invalida" ; echo  ; unitylensshopping ;;
esac
}
Continuar() {
	clear
	echo -e '\n Removendo Amazon...'
	read -t 5
	sudo apt-get -y remove unity-lens-shopping
	read -t 2
	clear
	compilacoes1
}
Pular() {
	clear
	echo -e '\n Pulando para o proximo aplicativo...'
	echo -e '\b Espere 30 segundos ou aperte "Enter".'
	read -t 30
	compilacoes1
}
unitylensshopping
###unity-lens-shopping 1 Fim
	else
		clear
#	compilacoes1
echo -e 'Pacote "unity-lens-shopping" ja foi removido...'
read -t 30 -p 'Espere 30 segs ou aperte ENTER!'
fi
###unity-lens-shopping FIM
