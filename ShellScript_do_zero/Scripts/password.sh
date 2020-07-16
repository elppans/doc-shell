#!/bin/bash

## Teste echo off
echo -e "\n\nTeste Password \"mudo\"...\n"
echo -e "Digite a senha e aperte ENTER"
echo -e "A senha não aparecera enquanto digita, (\"CTRL+C\" para sair)..."
stty -echo
read -p "Password: " PWD
stty echo

echo -e "\n\nTeste, Password = $PWD"

## Teste (*)
echo -e "\n\nTeste Password com aterísticos (*)"
echo -e "Digite a senha desejada e aperte ENTER..."
        unset password
        prompt="password:"
        while IFS= read -p "$prompt" -r -s -n 1 char
        do
            if [[ $char == $'\0' ]]
            then
                 break
            fi
            prompt='*'
            password+="$char"
        done
        echo -e "\n\n"
        stty -echo
        echo "$password" | tee pwd >> /dev/null
        stty echo

echo -e "\nTeste, Password = `cat pwd`\n\n"
rm pwd

## "tee" é um exemplo, pode-se usar para criar/usar a senha em outros comandos
# como "ssh", "anydesk --set-password", "teamviewer --passwd", etc...
