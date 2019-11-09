#!/bin/bash

		echo -e "\n \n \n##### ENTRE COM AS INFORMAÇÕES SOLICITADAS PARA A CONFIGURAÇÃO CORRETA DO SISTEMA ##### \n \n"

		echo -e "		Para deixar as opcoes padrao, aperte  ENTER ou espere 10 seg.!\n"
			
		echo -e "\nInforme com o usuario do Banco de Dados:"
		echo -e "Usuario padrao: postgres\n"
		read -t 10 -p "Digite o novo valor ou aperte ENTER para o padrão: " USUARIO
		echo ""

		echo -e "\nInforme com a senha do banco de Dados:"
		echo -e "Senha padrao: postgres\n"
		read -t 10 -p "Digite o novo valor ou aperte ENTER para o padrão: " SENHA
		echo ""

		echo -e "\nInforme com o IP do servidor de Banco de Dados:"
		echo -e "IP padrao: 127.0.0.1"
		read -t 10 -p "Digite o novo valor ou aperte ENTER para o padrão: " IP_BANCO
		echo ""

	
		echo -e "\nInforme o nome do base unificada:"
		echo -e "Nome do Base padrao: ZeusRetail"
		read -t 10 -p "Digite o novo valor ou aperte ENTER para o padrão: " B_MANAGER
		echo ""
