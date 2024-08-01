## 10 passos para construir um script em Shell de forma correta e de qualidade

1. **Evite criar variáveis redundantes**: Se você já tem uma variável com um determinado valor, reutilize essa variável em vez de criar uma nova com o mesmo valor. Crie novas variáveis somente quando precisar de valores diferentes.

   ```
   # Variável já existente
   nome="João"
   
   # Reutilizando a variável
   echo "Olá, $nome!"
   
   # Criando uma nova variável apenas quando necessário
   sobrenome="Silva"
   echo "Nome completo: $nome $sobrenome"
   ```
2. **Use subshells ($()) apenas quando necessário**: As subshells permitem executar comandos em um ambiente isolado, mas elas podem afetar o desempenho. Utilize-as apenas quando for realmente necessário.

   ```
   # Usando subshell para capturar a saída de um comando
   data=$(date +%Y-%m-%d)
   echo "A data de hoje é: $data"
   
   # Evitando subshell desnecessária
   if [ -f arquivo.txt ]; then
       echo "O arquivo existe"
   fi
   ```
3. **Priorize a legibilidade do código**: Escreva códigos que sejam facilmente compreensíveis por qualquer pessoa com conhecimentos básicos de programação. Evite construções obscuras ou siglas pouco conhecidas.

   ```
   # Código legível
   if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
       exibir_ajuda
       exit 0
   fi
   
   # Código obscuro
   [ "$1" = "-h" -o "$1" = "--help" ] && { exibir_ajuda; exit 0; }
   ```
4. **Prefira estruturas de controle comuns**: Utilize estruturas de controle como `if`, `for` e `while` de forma clara e legível. Por exemplo:

   ```
   # Exemplo de if legível
   if [[ "$XDG_CURRENT_DESKTOP" == "GNOME" ]]; then
       TITLE="biglinux-webapps"
   else
       TITLE="BigLinux WebApps"
   fi
   
   # Exemplo de for
   for file in *.txt; do
       echo "Processing $file"
       # Código para processar o arquivo
   done
   ```
5. **Utilize heredocs para strings longas**: Em vez de usar `cat` com `EOF`, considere utilizar heredocs (`read -d '' var <<'EOF'`) para atribuir strings longas a variáveis. Isso geralmente é mais rápido e mais legível.

```
read -d '' ShowText <<'EOF'
Esse conteúdo vai ser salvo como a variável ShowText
É bem mais rápido que usar o cat
EOF

# Agora exibe a variável utilizando o echo
echo "$ShowText"
```

1. **Documente seu código**: Adicione comentários explicativos em seu código para torná-lo mais compreensível e facilitar a manutenção futura.

   ```
   # Função para exibir ajuda
   exibir_ajuda() {
       # Exibe informações de uso do script
       echo "Uso: $0 [opções]"
       echo "Opções:"
       echo "  -h, --help    Exibe esta ajuda"
       echo "  -v, --verbose Ativa o modo verboso"
   }
   
   # Verifica se o usuário solicitou ajuda
   if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
       exibir_ajuda
       exit 0
   fi
   ```
2. **Divida seu script em funções**: Organize seu código em funções reutilizáveis para melhorar a modularidade e facilitar a leitura.

   ```
   # Função para comprimir um arquivo
   comprimir_arquivo() {
       local arquivo="$1"
       gzip "$arquivo"
   }
   
   # Função para descomprimir um arquivo
   descomprimir_arquivo() {
       local arquivo="$1"
       gunzip "$arquivo.gz"
   }
   
   # Loop para processar vários arquivos
   for arquivo in *.txt; do
       comprimir_arquivo "$arquivo"
   done
   ```
3. **Trate erros adequadamente**: Implemente verificações de erros e mensagens de erro informativas para lidar com condições inesperadas.

   ```
   # Função para copiar um arquivo
   copiar_arquivo() {
       local origem="$1"
       local destino="$2"
   
       if [ ! -f "$origem" ]; then
           echo "Erro: O arquivo de origem '$origem' não existe" >&2
           return 1
       fi
   
       cp "$origem" "$destino"
       if [ $? -ne 0 ]; then
           echo "Erro: Falha ao copiar '$origem' para '$destino'" >&2
           return 1
       fi
   
       return 0
   }
   
   # Chamada da função
   copiar_arquivo "arquivo.txt" "/tmp/backup.txt"
   if [ $? -ne 0 ]; then
       echo "Ocorreu um erro durante a cópia" >&2
       exit 1
   fi
   ```
4. **Siga as melhores práticas de estilo de código**: Adote um estilo de código consistente, com indentação adequada, uso de espaços em branco e nomenclatura significativa de variáveis.

   ```
   # Estilo de código consistente
   funcao_exemplo() {
       local variavel="valor"
   
       if [ "$variavel" == "valor" ]; then
           echo "A variável é igual a 'valor'"
       else
           echo "A variável é diferente de 'valor'"
       fi
   }
   
   # Nomenclatura significativa de variáveis
   nome_arquivo="dados.txt"
   processar_arquivo "$nome_arquivo"
   ```
5. **Teste seu script exaustivamente**: Teste seu script em diferentes cenários, incluindo casos de borda e entradas inesperadas, para garantir que ele funcione corretamente.

   ```
   # Função para testar várias condições
   testar_condicoes() {
       local valor="$1"
   
       if [ "$valor" -eq 0 ]; then
           echo "O valor é zero"
       elif [ "$valor" -lt 0 ]; then
           echo "O valor é negativo"
       elif [ "$valor" -gt 0 ]; then
           echo "O valor é positivo"
       else
           echo "Valor inválido"
       fi
   }
   
   # Testes
   testar_condicoes 0    # Saída esperada: O valor é zero
   testar_condicoes -5   # Saída esperada: O valor é negativo
   testar_condicoes 10   # Saída esperada: O valor é positivo
   testar_condicoes abc  # Saída esperada: Valor inválido
   ```

Lembre-se de que a legibilidade e a manutenibilidade são cruciais ao escrever scripts de shell. Siga essas diretrizes para criar códigos de qualidade que possam ser facilmente compreendidos e mantidos por você e por outros desenvolvedores.