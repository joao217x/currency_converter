1-
initState com get das cotações                     |- view/home
initState com get das cotações de todas moedas     |- view/currencies
------------------------------------------------------------------------
2-
passar o get para a view                           |- view/home
passar o get para a view                           |- view/currencies
------------------------------------------------------------------------
3-
método que remove item da lista                    |- app/prefs
método que armazena item na lista                  |- app/prefs
passar os métodos do prefs pra controller          |- app/controller
------------------------------------------------------------------------
4-
ListView dos itens da lista para mostrar na view   |- view/home
ListView dos itens da lista para mostrar na view   |- view/currencies
------------------------------------------------------------------------
5- 
método com o cálculo da cotação                    |- app/controller
------------------------------------------------------------------------
6-
att pelo botão reflete em todas moedas             |- view/home
att pelo botão reflete em todas moedas             |- view/currencies
------------------------------------------------------------------------
7-
dolar como moeda default nas favoritas             |- view/home
------------------------------------------------------------------------
8-
passar o método que remove para os botões          |- view/home
passar o método que remove para os botões          |- view/currencies
passar o método que armazena para os botões        |- view/currencies
------------------------------------------------------------------------
9-
reatividade do botão "add moeda"                   |- view/home
------------------------------------------------------------------------
10-
layout modal de confirmação de remoção da moeda    |- view/home
linkar modal de remoção ao botão na view           |- view/home
linkar modal de remoção ao botão na view           |- view/currencies
------------------------------------------------------------------------
11-
número de moedas adicionadas no "?/4"              |- view/home
------------------------------------------------------------------------
12-
snackbar de aviso do limite de moedas              |- view/currencies
linkar a snackbar ao botão de add                  |- view/home
linkar a snackbar ao botão de favoritar            |- view/currencies
------------------------------------------------------------------------
13-
hora do ultimo get                                 |- view/home
hora do ultimo get                                 |- view/currencies
------------------------------------------------------------------------
14-
mascara no campo email                             |- view/login
habilitar botão após verificação da mascara        |- view/login
------------------------------------------------------------------------
15-
separar client dio do método get                   |- app/service
------------------------------------------------------------------------