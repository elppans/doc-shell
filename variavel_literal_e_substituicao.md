# Diferença da variável `VARIAVEL="${comando}"` e a variável `VARIAVEL="$(comando)"`

A diferença está principalmente na forma como o Bash interpreta e expande os comandos:

1. **VARIAVEL="${comando}"**:
   - Neste caso, o Bash trata `comando` como uma variável ou texto literal. Ele simplesmente substitui o valor da variável `comando` na string (ou nada, caso a variável não exista). 
   - Exemplo:
     ```bash
     comando="echo Hello"
     VARIAVEL="${comando}"
     echo $VARIAVEL  # Saída: echo Hello
     ```
     Aqui, o valor da variável `comando` é armazenado diretamente em `VARIAVEL`. O comando **não** é executado.

2. **VARIAVEL="$(comando)"**:
   - Este formato, conhecido como substituição de comando, faz o Bash **executar** o comando e armazena a saída desse comando na variável `VARIAVEL`.
   - Exemplo:
     ```bash
     VARIAVEL="$(echo Hello)"
     echo $VARIAVEL  # Saída: Hello
     ```
     Aqui, o comando `echo Hello` é executado, e o resultado (`Hello`) é atribuído à variável.

### Diferença essencial:
- Com `"${comando}"`, você está apenas referenciando o valor de uma variável ou string.
- Com `"$(comando)"`, você está executando o comando e armazenando a saída na variável.

___
