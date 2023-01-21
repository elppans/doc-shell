#!/bin/bash

echo -e "Digite o nome do usuário ftp e aperte ENTER..."
        unset user
        prompt="user:"
        read -p "$prompt" -r char
            if [[ $char == $'\0' ]]
            then
                 break
            fi
              	export user="$char"

echo -e "Digite a senha do usuário ftp e aperte ENTER..."
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

echo "$user"
echo "$password"

