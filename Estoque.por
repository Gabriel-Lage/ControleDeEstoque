algoritmo "Controle de Estoque"
// Fun��o : Realizar o cadastro e controle de produtos em estoque de um estabelecimento
// Autor : Bruno Caetano, Edmar Pires, Gabriel Lage, Gustavo Barcario, Vinicius Costa
// Data : 24/11/2022
//Professor: Rodrigo Vilela
//Se��o de Declara��es
var

//Retorna ao menu inicial
opc : caracter

//Dados do produto (cada vetor � um atributo)
descricao :vetor[1..50] de caracter
quantidade :vetor[1..50] de inteiro
precoCusto, precoVenda, porcento, lucroProd, valorBruto, qttVenda:vetor[1..50] de real

//Vetores do estoque
codItem, codItem1, vendaqtt, opcao :inteiro
totalVenda, lucroTotal :real

//Respons�vel em exibir a tela de boas vindas
Procedimento Apresentacao

inicio
timer 100
Escreval("    ____    ______   __  __    __      __  _____   _   _   _____     ____    _ ")
Escreval("   |  _ \  |  ____| |  \/  |   \ \    / / |_   _| | \ | | |  __ \   / __ \  | |")
Escreval("   | |_) | | |__    | \  / |    \ \  / /    | |   |  \| | | |  | | | |  | | | |")
Escreval("   |  _ <  |  __|   | |\/| |     \ \/ /     | |   | . ` | | |  | | | |  | | | |")
Escreval("   | |_) | | |____  | |  | |      \  /     _| |_  | |\  | | |__| | | |__| | |_|")
Escreval("   |____/  |______| |_|  |_|       \/     |_____| |_| \_| |_____/   \____/  (_)")
Escreval("                                            ____                               ")
Escreval("                                   /\      / __ \                              ")
Escreval("                                  /  \    | |  | |                             ")
Escreval("                                 / /\ \   | |  | |                             ")
Escreval("                                / ____ \  | |__| |                             ")
Escreval("                               /_/    \_\  \____/                              ")
Escreval("          _____   _____    _____   _______   ______   __  __                   ")
Escreval("         / ____| |_   _|  / ____| |__   __| |  ____| |  \/  |     /\           ")
Escreval("        | (___     | |   | (___      | |    | |__    | \  / |    /  \          ")
Escreval("         \___ \    | |    \___ \     | |    |  __|   | |\/| |   / /\ \         ")
Escreval("         ____) |  _| |_   ____) |    | |    | |____  | |  | |  / ____ \        ")
Escreval("        |_____/  |_____| |_____/     |_|    |______| |_|  |_| /_/    \_\       ")
Escreval("          ______    _____   _______    ____     ____    _    _   ______        ")
Escreval("         |  ____|  / ____| |__   __|  / __ \   / __ \  | |  | | |  ____|       ")
Escreval("         | |__    | (___      | |    | |  | | | |  | | | |  | | | |__          ")
Escreval("         |  __|    \___ \     | |    | |  | | | |  | | | |  | | |  __|         ")
Escreval("         | |____   ____) |    | |    | |__| | | |__| | | |__| | | |____        ")
Escreval("         |______| |_____/     |_|     \____/   \___\_\  \____/  |______|       ")
timer 0
Escreval
Escreval
Escreval

//Nomes dos Paticipantes do Projeto
Escreval("Integrantes do projeto:")

timer 380
Escreva("- Bruno")
Escreval(" Caetano")
Escreva("- Edmar")
Escreval(" Pires")
Escreva("- Gabriel")
Escreval(" Lage")
Escreva("- Gustavo")
Escreval(" Barcario")
Escreva("- Vinicius")
Escreval(" Costa")
timer 0

Escreval
Escreval
Escreval
Escreval
Escreva("Pressione (ENTER) para continuar...")
Leia(opc)
LimpaTela
Escreval

//Tela de Carregamento
Escreva("C A R R E G A N D O ")
timer 600
Escreva(".")
Escreva(".")
Escreval(".")
timer 0
Escreval
Escreval
Escreval(" Iniciando!!")
Escreval("              (   ()   )")
Escreval("    ) ________    /  )")
Escreval(" ()  |\       \  /")
Escreval("( \\__ \ ______\/")
Escreval("   \__) |       |")
Escreval("     |  |       |")
Escreval("      \ |       |")
Escreval("       \|_______|")
Escreval("        /    \")
Escreval("       (     |")
Escreval("        \    |")
Escreval("      ( ()   |")
Escreval("             () )")
Timer 1000
Timer 0

fimprocedimento

Procedimento Menu //Respons�vel por exibir o menu principal
inicio
repita
   LimpaTela
   Escreval("=================================================================================")
   Escreval("==                               Sistema Estoque                               ==")
   Escreval("=================================================================================")
   Escreval("|                                                                               |")                                                                               |")
   Escreval("|                             1 - Cadastrar Produto                             |")
   Escreval("|                             2 - Consultar Estoque                             |")
   Escreval("|                             3 - Pesquisar/Editar                              |")
   Escreval("|                             4 - Vender Produto                                |")
   Escreval("|                             5 - Relat�rio de Vendas                           |")
   Escreval("|                             6 - Cr�ditos                                      |")
   Escreval("|                             7 - Sair                                          |")
   Escreval("|                                                                               |")
   Escreval("=================================================================================")
   Escreval

   Escreva("Digite a op��o desejada: ")
   Leia(opcao)

   Escolha (opcao) //Caso foi usado para chamar a op��o dentro de um procedimento
   caso 1 //Seleciona no menu Cadastrar Produto
      LimpaTela
      CadastrarProduto()

   caso 2  //Seleciona no menu Consulta Estoque
      LimpaTela
      consultaEstoque()

   caso 3  //Seleciona no menu Pesquisar e Editar
      LimpaTela
      pesquisarEditar()

   caso 4 //Seleciona no menu Venda Produto
      LimpaTela
      VendaProduto()

   caso 5 //Seleciona no menu Relatorio Venda
      LimpaTela
      RelatorioVenda()

   caso 6 //Seleciona no menu Cr�ditos
      LimpaTela
      Creditos()

   caso 7 //Fecha o programa
      Escreval ("Obrigado pela prefer�ncia, volte sempre!")
   fimalgoritmo
fimescolha
ate opcao=7

fimprocedimento

//Respons�vel em cadastar um produto no vetor
//1-Produto a ser cadastrado
procedimento CadastrarProduto

inicio

LimpaTela

codItem:= codItem+1 //Constante que dar� o c�digo ao produto

codItem1:= codItem1+1 //Constante que registra quantidade total de itens cadastrados

Escreval("=================================================================================")
Escreval("==                             Cadastro de Produto                             ==")
Escreval("=================================================================================")
Escreval

Escreva("Digite o nome do produto: ")
Leia(descricao[codItem])

Escreval
Escreval
Escreval
Escreval("=================================================================================")
Escreval("|    __                                                                  __     |")
Escreval("|   |..|                                                                |..|    |")
Escreval("|  _|..|_         Todas as op��es abaixo devem apenas n�meros!!        _|..|_   |")
Escreval("|  \..../                                                              \..../   |")
Escreval("|   \../                                                                \../    |")
Escreval("|    \/                                                                  \/     |")
Escreval("=================================================================================")
Escreval

Escreva("Digite a quantidade de produtos para cadastrar: ")
Leia(quantidade[codItem])

Escreva ("Pre�o de custo: R$ ")
Leia (precoCusto[codItem])

Escreva("Digite o percentual de lucro desejado: ")
Leia(porcento[codItem])

precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100) //Calcula o lucro atribuido usando porcentagem

LimpaTela
Escreval("=================================================================================")
Escreval("==                                   Resumo                                    ==")
Escreval("=================================================================================")

//Abaixo ir� mostrar o produto cadastrado e suas informa��es
Escreval("Voc� cadastrou  : ",descricao[coditem])
Escreval("C�digo          :",coditem)
Escreval("Quantidade      :",quantidade[coditem])
Escreval("Pre�o de custo  : R$ ",precoCusto[coditem]:1:2)
Escreval("Pre�o de venda  : R$ ",precoVenda[coditem]:1:2)
Escreval

Escreval("Cadastrar novo produto (1) | Menu (ENTER)")
Leia(opc)

se (opc="1") entao
CadastrarProduto()
fimse

fimprocedimento

procedimento consultaEstoque() //Respons�vel por consultar todos produtos no vetor

inicio
LimpaTela
Escreval("=================================================================================")
Escreval("==                                  Estoque                                    ==")
Escreval("=================================================================================")
Escreval

se (codItem1 = 0) entao //Condicional para n�o permitir consulta estoque se n�o tiver produto cadastrado
Escreval("Nenhum produto cadastrado!")
Escreval

Escreval("Para verificar o estoque � necessario cadastrar um item!")
Escreval

Escreva("Pressione (ENTER) para voltar ao menu...")
Leia (opc)

senao
Escreval("Voc� possui no estoque", codItem1, " cadastro(s) de produto(s): ")

para codItem de 1 ate codItem1 faca //Para percorrer todos os itens do vetor cadastrado
   Escreval

   //Exibe os itens cadastrados e sua quantidade no estoque
   Escreval("C�digo         :",codItem)
   Escreval("Descri��o      : ",descricao[codItem])
   Escreval("Quantidade     :",quantidade[codItem])
   Escreval("Valor de custo : R$ ",precoCusto[codItem]:1:2)
   Escreval("Valor de venda : R$ ",precoVenda[codItem]:1:2)
   Escreval
   Escreval("------------------------------------------")
fimpara

Escreval("Editar (1) | Menu (ENTER)")
Leia(opc)

se (opc = "1") entao
   pesquisarEditar()
senao
   Menu()
fimse
fimse
fimProcedimento

procedimento pesquisarEditar() //Respons�vel por pesquisar e editar um produto no vetor

inicio

LimpaTela
Escreval("=================================================================================")
Escreval("==                             Pesquisar/Editar                                ==")
Escreval("=================================================================================")
Escreval

//Condicional para n�o permitir consulta estoque se n�o tiver produto cadastrado
se (codItem = 0) entao
Escreval("Nenhum produto cadastrado!")
Escreval
Escreval("Para pesquisar e editar � necessario cadastrar um item!")
Escreval

Escreval("Pressione (ENTER) para voltar ao menu...")
Leia (opc)

senao
Escreva("Insira o c�digo do produto que deseja pesquisar: ")
Leia(codItem)

se (codItem > codItem1) entao
   Escreval
   Escreval("O C�digo do item digitado n�o existe!")
   Escreval("Pequise outro C�digo...")
   timer(3000)
   timer(0)
   pesquisarEditar()

senao
   // Exibe o item pesquisado
   Escreval("C�digo         :",codItem)
   Escreval("Descri��o      : ",descricao[codItem])
   Escreval("Quantidade     :",quantidade[codItem])
   Escreval("Valor de custo : R$ ",precoCusto[codItem]:1:2)
   Escreval("Valor de venda : R$ ",precoVenda[codItem]:1:2)
   Escreval

   Escreval("Editar (1) | Pesquisar Novamente (2) | Consultar Estoque (3) | Menu (ENTER)")
   Leia(opc)

   se (opc = "1") entao
      Escreval("=================================================================================")
      Escreval("==                                   Editar                                    ==")
      Escreval("=================================================================================")
      Escreval

      Escreval("Nome (1) | Quantidade (2) | Pre�o de Custo (3) | Percentual (4)")
      Leia(opc)

      se(opc = "1") entao
         Escreva("Digite o novo nome do produto: ")
         Leia(descricao[codItem])

         Escreval("O nome do produto foi atualizado: ",descricao[codItem])

      senao
         se (opc = "2") entao
            Escreva("Digite a nova quantidade para alterar o estoque: ")
            Leia(quantidade[codItem])

            Escreval("O produto ",descricao[codItem]," agora possui ",quantidade[codItem]," unidade(s)")

         senao
            se (opc = "3") entao
               Escreva("Digite a atualiza��o do pre�o de custo: ")
               Leia(precoCusto[codItem])

               precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100) //Calculo de Atualiza��o de Custo

               Escreval("O produto ",descricao[codItem]," est� com o valor de custo de R$ ",precoCusto[codItem]:1:2)

            senao
               se (opc = "4") entao
                  Escreva("Digite o novo percentual de lucro desejado: ")
                  Leia(porcento[codItem])

                  precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100) //Calculo de Atualiza��o de Percentual

                  Escreval("Percentual de lucro atualizado: ", porcento[codItem],"%")
               fimse
            fimse
         fimse
      fimse
   senao
      se (opc = "2") entao
         pesquisarEditar()
      senao
         se (opc = "3") entao
            consultaEstoque()
         senao
            menu()
         fimse
      fimse
   fimse
fimse
fimse

Escreval
Escreval("Pesquisar Novamente (1) | Menu (ENTER)")
Leia(opc)
se (opc="1") entao
pesquisarEditar()
fimse
fimprocedimento

procedimento VendaProduto() //Respons�vel por Vender um produto no vetor

inicio
LimpaTela
Escreval("=================================================================================")
Escreval("==                                   VENDA                                     ==")
Escreval("=================================================================================")
Escreval

se (codItem = 0) entao
Escreval("Nenhum produto cadastrado!")
Escreval
Escreval("Para realizar uma venda � necessario cadastrar um item!")
Escreval

Escreva("Pressione (ENTER) para voltar ao menu...")
Leia (opc)

senao
Escreva("Insira o c�digo do produto que deseja vender: ")
Leia(codItem)

se (codItem > codItem1) entao
   Escreval
   Escreval("O C�digo do item digitado n�o existe!")
   Escreval("Digite outro C�digo...")
   timer(3000)
   timer(0)
   VendaProduto()

senao
   //Exibe o item que sera vendido
   Escreval("Descri��o      : ",descricao[codItem])
   Escreval("Quantidade     : ",quantidade[codItem])
   Escreval("Valor de venda : R$ ",precoVenda[codItem]:1:2, " por unidade")
   Escreval()
   Escreval("Quantas unidades deseja vender?")

   Escreva("Informe: ")
   Leia (vendaqtt)

   qttVenda[codItem] := qttVenda[codItem] + vendaqtt //Calcula quantidade total de vendas

   Escreval()
   Escreval("Vendido(s)",vendaqtt," unidade(s) por R$",precoVenda[codItem] * vendaqtt) //Calculo da vendas

   totalVenda := totalVenda + (precoVenda[codItem] * vendaqtt) //Soma total de vendas

   lucroProd[codItem] := (precoVenda[codItem] -  precoCusto[codItem]) * qttVenda[codItem] //Lucro total do produto

   Escreval()
   quantidade[codItem] := quantidade[codItem] - vendaqtt //Quantidade de venda produto

   Escreval("A quantidade de ",descricao[codItem]," foi atualizada!")
   Escreval()

   Escreval("Realizar nova venda (1) | Consultar estoque (2) | Menu (ENTER)")
   Leia(opc)

   se (opc="1") entao
      VendaProduto()

   senao
      se (opc="2") entao
         consultaEstoque()
      fimse
   fimse
fimse
fimse
fimprocedimento

procedimento relatorioVenda() //Respons�vel por exibir relat�rio de venda
inicio

LimpaTela
Escreval("=================================================================================")
Escreval("==                            Relat�rio Venda                                  ==")
Escreval("=================================================================================")
Escreval
Escreval("Total de vendas: R$ ",totalVenda:1:2)

lucroTotal:=0 //Zera contador para recalcular o lucro total dos produtos
para codItem de 1 ate codItem1 faca
lucroTotal:= lucroTotal+LucroProd[codItem] //Cacula o lucro total do produto
fimpara

Escreval("Total de lucro: R$ ", lucroTotal:1:2)

se (totalVenda = 0) entao
Escreval("Nenhuma venda realizada!")
Escreval
Escreval("Para verificar o relat�rio de venda � necessario realizar uma venda!")
Escreval

Escreva("Pressione (ENTER) para voltar ao menu...")
Leia (opc)

senao
para codItem de 1 ate codItem1 faca
   Escreval
   Escreval("C�digo            :",codItem)
   Escreval("Descri��o         : ",descricao[codItem])
   Escreval("Quantidade vendida: ", qttVenda[codItem])
   Escreval("Valor de custo    : R$ ",precoCusto[codItem]:1:2)
   Escreval("Valor de venda    : R$ ",precoVenda[codItem]:1:2)
   Escreval("O lucro do ", descricao[codItem]," � de R$ ", lucroProd[codItem]:1:2)
   Escreval
   Escreval("------------------------------------------")
fimpara

Escreval("Editar (1) | Menu (ENTER)")
Leia(opc)

se (opc = "1") entao
   pesquisarEditar()
senao
   Menu()
fimse
fimse
fimProcedimento

procedimento Creditos() //Respons�vel por exibir os cr�ditos do projeto
inicio

LimpaTela
timer(250)
Escreval("       _____   _____    ______   _____    _____   _______    ____     ___   ")
Escreval("      / ____| |  __ \  |  ____| |  __ \  |_   _| |__   __|  / __ \   / ____|")
Escreval("     | |      | |__) | | |__    | |  | |   | |      | |    | |  | | | (___  ")
Escreval("     | |      |  _  /  |  __|   | |  | |   | |      | |    | |  | |  \___ \ ")
Escreval("     | |____  | | \ \  | |____  | |__| |  _| |_     | |    | |__| |  ____) |")
Escreval("      \_____| |_|  \_\ |______| |_____/  |_____|    |_|     \____/  |_____/ ")
Escreval("                                                                            ")
Escreval("                                      Projeto                                ")
Escreval("                                 ==SISTEMA ESTOQUE==                         ")
Escreval("                                                                             ")
Escreval("                                      Autores                                 ")
Escreval("                                                                             ")
Escreval("                                      Bruno Caetano                              ")
Escreval("                                  Edmar Pires                               ")
Escreval("                                      Gabriel Lage                               ")
Escreval("                                  Gustavo Barcario                            ")
Escreval("                                      Vinicius Costa                            ")
Escreval("                                                                             ")
Escreval("                               Professor: Rodrigo Vilela                       ")
Escreval("                                                                            ")
Escreval
Escreval
Escreval
Escreval
Escreval("                               OFERECIMENTO                              ")
Escreval("                          # E S C O L A  T E C H                        ")
Escreval("    G R U P O                                                            ")
Escreval("        E N E R G I S A                                                  ")
Escreval("               ----------------                                          ")
Escreval("               -----------------                                         ")
Escreval("                   --------------                                        ")
Escreval("                       ----------                                        ")
Escreval("                         --------                                        ")
Escreval("                       -  ------     _____ ______ _   _          _____   ")
Escreval("                    ----- -----     / ____|  ____| \ | |   /\   |_   _|  ")
Escreval("                  -----   ----     | (___ | |__  |  \| |  /  \    | |    ")
Escreval("                ------   ---        \___ \|  __| | . ` | / /\ \   | |    ")
Escreval("               -------   -          ____) | |____| |\  |/ ____ \ _| |_   ")
Escreval("               --------            |_____/|______|_| \_/_/    \_\_____|  ")
Escreval("               ---------                                    CATAGUASES   ")
Escreval("            -- -----------                                           ")
Escreval("            --- ------------                                         ")
Escreval("            ---- -------------                                       ")
Escreval("            ---------------------                                    ")
Escreval("             ----------------------                                  ")
Escreval("             --------------------------                              ")
Escreval("              -------------------------                              ")
Escreval
Escreva("Voltar ao Menu (ENTER)")
Leia(opc)
timer(0)
fimprocedimento

inicio
Apresentacao()
Menu()

fimalgoritmo

