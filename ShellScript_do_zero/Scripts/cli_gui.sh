#!/bin/bash
# De:  Luciano Gonçales

# Extrai informacoes do console
conname=$(who -m | sed 's/ \+/\t/g' | cut -f2)
contypename=$(echo $conname | cut -c '1-3')

# Verifica o tipo de console
if [ "$contypename" = "tty" ]; then
  contype=1 # Console fisico (CUI)
else
  if [ "$contypename" = "pts" ]; then
    contype=2 # Console logico (GUI)
  else
    contype=0 # Erro
  fi
fi

# Verifica erro e sai
if [ "$contype" -eq 0 ]; then
  echo "Ocorreu um erro na leitura"
  exit
fi

# Exibe o tipo e nome do console
if [ "$contype" -eq 1 ]; then
  echo "Voce esta no terminal FISICO: $conname"
else
  echo "Voce esta no terminal LOGICO: $conname"
fi

