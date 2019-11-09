#!/bin/bash

if [ -n "$*" ]; then
case "$*" in
	-t|--teste)
	echo "Teste OK!"
	;;
 *)
	echo "deve digitar a opção!"
	exit 0
esac
	else
	echo "Sem opcoes!"
fi
