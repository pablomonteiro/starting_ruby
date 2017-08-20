# jogo da Adivinhação

## Durante o curso foi criado um jogo que escolhe um número e o usuário tenta adivinhar no chute. 
O número é escolhido de formaaleatória de acordo com o nível de dificuldade selecionado pelo usuário.
O usuário tem 5 changes de acertar o número. No final, uma pontuação é dada para o usuário.


### Alguns lembretes interessantes colhidos das aulas
#### AULA 1
Entrada e saída básica de informação, como imprimir e ler informações do console utilizando as funções 'puts' e 'gets'.
Conversão de números em strings e vice-versa utilizando as funções '.to_s' e '.to_i'.


#### AULA 2
As funções não necessariamente precisam ser invocadas utilizando os parênteses, a NÃO utilização é mais utilizada no mundo do RoR.
Utilização do IF
Sintaxe: if ... else ... end
Forma bastante utilizada é: return 0 if algo_acontecer. Isso é a mesma coisa de: if algo_acontecer return 0
Comentários são escritos utilizando #
Utilização do FOR
Sintaxe: for i in 1..10 end ou for numero in conjunto_de_numeros end
Evitar Magic Numbers
Uso do break para forçar saída do laço;


#### AULA 3
Criação de funções para melhorar legibilidade, organização e coesão do código. Importante saber utilizar para encapsular um determinado comportamento.
Utilização de FUNÇÕES: def nome_da_funcao ... end ou def nome_da_funcao(parametros) ... end
Importante para restringir o escopo de variáveis
Evitar uso de variáveis globais
O Ruby entrega como resposta de uma função o retorno da última linha executada para naquele método. Outra forma de retornar algo é através do retorno explícito usando o return.
Buscar utilizar sempre que der as boas práticas, por exemplo, early return. Ou seja, se uma instrução indica o fim da execução daquela função, não armazenar essa instrução em uma variável para retornar apenas no final, mas sim, retornar o quanto antes a fim de diminuir a complexidade de execução e leitura do código.

#### AULA 4
Utilização de Arrays: array = [] ou array = [1,2,3]
Algumas funções importantes na utilização de arrays:
O primeiro índice do array começa com 0.
 - array[0] - Retorna o primeiro elemento.
 - array.size - Retorna o tamanho do array.
 - array[1] = 5 - Atribui o valor 5 à segunda posição do array
 - array << 8 - Atribui o valor 8 à última posição do array.
Utilização de Strings: A função "string".strip remove os caracteres em branco tento do começo quanto do final da string.
Para saber mais sobre quais funções um determinado tipo possui, é possível visualizar através da função .methods. Pode-se utilizar o irb para testes.
Utilizando Interpolação de String:
 - Utilizada para evitar concatenação de srings; "Impressão da variável " + variavel + " no contexto"
 - Com interpolação: "Impressão da variável #{variavel} no contexto"


#### AULA 5

Vimos como um computador é capaz de representar números inteiros em um formato binário, com somente dois algarismos, e escolhemos 0 e 1 para serem tais algarismos. Já a base do nosso dia-a-dia é a decimal, com os algarismos de 0 a 9. Aprendemos que o computador também utiliza a base hexadecimal com os algarismos extras de A até F, e que convertendo de um para o outro passamos a ser capazes de converter qualquer número em algo para o computador, sempre limitado a determinado tipo de arredondamento, uma vez que temos limite de memória.

Aprendemos como funciona uma função genérica que transforma caracteres em números e ainda imagens em números, tudo isso para entender o poder da matemática na computação: e isso é só o início para aqueles que pretendem se aventurar no mundo da pesquisa em ciência da computação.


#### AULA 6
Variáveis locais, mesmo declaradas dentro de ifs, loop, etc são visiveis por todo o escopo da função
Quando se tem muitos ifs aninhados, buscar usar soluções como case...when...end
Para retornar mais de uma variável de uma função, deve-se utilizar o return explícito, com as informações a serem retornadas separadas por vírgula
Ex: return 1,2,3 #Retorno da função
    a,b,c = retorno_de_varios_valores #Recebendo as informações
Utilização do While...end
Utilização do loop do...end, para sair/parar a condição deve-se usar o break
É comum em Ruby as informações booleanas terminarem com '?'



