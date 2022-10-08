
# Currency Converter

### Usuário para login
- Email: fulano@email.com
- Email: 123456

### Observações técnicas (coisas que faltaram e como faria)
- Lista de TO-DO das tarefas no arquivo `TODOLIST.md`

1- InitState das telas com get das cotações
- Tive complicações para passar o método get (que vem da service e passa pela controller),
    criei outro método async chamando somente o get e passei para o initState, ao testar
    via inspect ele retorna os gets porém não consigo refletir eles na view

------------------------------------------------------------------------------------------
2- Passar o get das cotações para a view
- Consegui de certa forma porém ele aponta que o get está nulo/ainda não foi feito,
    acredito que seja algum erro no initState ou na chamada dos métodos pois ao comentar
    qualquer passagem de get, a view "loada" os demais gets, como se a model não tivesse
    sido povoada ainda e dps de comentar ela é povoada

------------------------------------------------------------------------------------------
3- Criação da lista e métodos de armazenamento e remoção de itens da mesma 
(prefs>controller>botão na view)
- Criaria uma lista com o tipo da model das moedas e com limite de tamanho (4 itens),
    para adicionar itens nela chamaria um '.add(index)' com o objeto das moedas que 
    vem do get, para remover um '.remove(index)'

- Pesquisaria sobre como add lista e itens da lista ao shared preferences

------------------------------------------------------------------------------------------
4- ListView das moedas adicionadas na lista
- Usaria um ListView na tela para mostrar as moedas já favoritadas

------------------------------------------------------------------------------------------
5- Método para calcular a cotação com o valor inserido
- Método na controller que pega o valor inserido pelo usuário e multiplica pela
    cotação do get

------------------------------------------------------------------------------------------
6- Botão de atualizar valores refletir em todas as moedas
- Passar um observer na tela para ler o método de conversão (cotação daquela moeda 
    específica X número inserido pelo usuário)

------------------------------------------------------------------------------------------
7- Dolár ser a moeda default caso usuário não tenha add nenhuma
- Criar um método que verifica a quantidade de itens na lista, caso 0 inserir dolár

------------------------------------------------------------------------------------------
8- Botões das views que removem e add na lista
- Passar os métodos prefs para a tela e refletir eles na lista (prefs > controller > view)

------------------------------------------------------------------------------------------
9- Reatividade do botão "add moeda
- Fazer verificação do tamanho da lista, caso 3 ou menos botão aparece, do contrário
    não aparece

------------------------------------------------------------------------------------------
10- Modal de confirmação ao remover moeda da lista
- Modal no estilo pop-up ao clicar em remover item da lista, com opção de cancelar e
    confirmar a remoção

------------------------------------------------------------------------------------------
11- Contador de moedas já adicionadas
- Passar observer para a view e fazer a leitura de um método que verifica o tamanho
    da lista

------------------------------------------------------------------------------------------
12- Snackbar de aviso do limite de moedas
- Snackbar (no mesmo modelo da implementada no login) que aparece ao tentar add item
    na lista após ela ter 4 itens já adicionados

------------------------------------------------------------------------------------------
13- Passar o get do horário das cotações para a view
- Já implementado, porém faltou fazer o parse do que vem da api para mostrar
    formatado na tela

------------------------------------------------------------------------------------------
14- Máscara no campo email
- Máscara via regex que verifica se a string adicionada no campo está correta (com @)

------------------------------------------------------------------------------------------
15- Separação service dos métodos
- Fazer o comentado sobre separar o client (dio/http) da service, visando facilitar
    uma futura manutenção
