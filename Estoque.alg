algoritmo "Controle de Estoque"
// Função : Realizar o cadastro e controle de produtos em estoque de um estabelecimento
// Autor : Bruno Caetano, Edmar Pires, Gabriel Lage, Gustavo Barcario, Vinicius Costa
// Data : 24/11/2022
// Seção de Declarações
var
opcao :inteiro
opc : caracter
descricao :vetor[1..100] de caracter
quantidade :vetor[1..100] de inteiro
precoCusto, precoVenda  :vetor[1..100] de real
codItem :inteiro
porcento : real
quantidadevenda, novaquantidade :inteiro



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
Escreval
Escreva("Pressione enter para continuar...")
Leia(opc)

LimpaTela

Escreval
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

Procedimento Menu
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
   Escreval("|                             5 - Relatório de Vendas                           |")
   Escreval("|                             6 - Sair                                          |")
   Escreval("|                                                                               |")
   Escreval("=================================================================================")
   Escreval()
   Escreva("Digite a opção desejada: ")
   Leia(opcao)

   Escolha (opcao)

   caso 1
      LimpaTela
      CadastrarProduto()
   caso 2
      LimpaTela
      consultaEstoque()
   caso 3
      LimpaTela
      pesquisarEditar()
   caso 4
      LimpaTela
      VendaProduto()
   caso 5
      LimpaTela
      RelatorioVenda()

   caso 6

   fimescolha
ate opcao=6
Escreval ("Obrigado pela preferência, volte sempre!")
fimprocedimento

procedimento CadastrarProduto
// Seção de Declarações Internas
inicio
LimpaTela
codItem:= codItem+1
escreval("=================================================================================")
escreval("==                             Cadastro de Produto                             ==")
escreval("=================================================================================")
Escreval
Escreva("Digite o nome do produto: ")
Leia(descricao[codItem])
Escreval
Escreval
Escreval
escreval("=================================================================================")
escreval("|    __                                                                  __     |")
escreval("|   |..|                                                                |..|    |")
escreval("|  _|..|_          Todas as opções abaixo devem apenas números!!       _|..|_   |")
escreval("|  \..../                                                              \..../   |")
escreval("|   \../                                                                \../    |")
escreval("|    \/                                                                  \/     |")
escreval("=================================================================================")
Escreval
Escreva("Digite a quantidade de produtos a cadastrar: ")
leia(quantidade[codItem])
escreva ("Preço de CUSTO: R$ ")
leia (precoCusto[codItem])
Escreva("Digite o percentual de lucro desejado: ")
leia(porcento)
precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento/100)


LimpaTela
escreval("=================================================================================")
escreval("==                                   Resumo                                    ==")
escreval("=================================================================================")
escreval("Você cadastrou  : ",descricao[coditem])
escreval("Quantidade      :",quantidade[coditem])
escreval("Custo           : R$ ",precoCusto[coditem]:1:2)
escreval("Preço           : R$ ",precoVenda[coditem]:1:2)
Escreval
Escreval("Cadastrar novo produto (1) | Menu (ENTER)")
Leia(opc)
se (opc="1") entao
   CadastrarProduto()
fimse
// Seção de Comandos
fimprocedimento

procedimento consultaEstoque()
inicio
limpatela
escreval("=================================================================================")
escreval("==                                  Estoque                                    ==")
escreval("=================================================================================")
escreval
se (codItem = 0) entao
   escreval("Nenhum produto cadastrado!")
   escreval
   escreval("Para verificar o estoque é necessario cadastrar um item!")
   escreval()
   escreva("Pressione ENTER para voltar ao menu...")
   leia (opc)
senao
   Escreval("Possuem", codItem," itens cadastrados" )
   escreval("Você possui no estoque os seguintes itens: ")
   para codItem de 1 ate codItem faca
      escreval()
      escreval("Código :",codItem)
      escreval("Descrição : ",descricao[codItem])
      escreval("Quantidade :",quantidade[codItem])
      escreval("valor de custo : R$",precoCusto[codItem])
      escreval("valor de venda : R$",precoVenda[codItem])
      escreval()
      escreval("------------------------------------------")
   fimpara
   Escreval("Editar (1) | Menu (ENTER)")
   leia(opc)
   se (opc = "1") entao
      pesquisarEditar()
   senao
      Menu()
   fimse
   fimProcedimento

   procedimento pesquisarEditar()
   inicio
   limpatela
   escreval("=================================================================================")
   escreval("==                             Pesquisar/Editar                                ==")
   escreval("=================================================================================")
   escreval
   se (codItem = "0") entao
      escreval("Nenhum produto cadastrado!")
      escreval
      escreval("Para pesquisar e editar é necessario cadastrar um item!")
      escreval()
      escreval("Pressione ENTER para voltar ao menu...")
      leia (opc)
   senao
      escreval("Insira o código do produto que deseja pesquisar: ")
      leia(codItem)
      escreval
      se(codItem >=1) E (codItem <= codItem) entao
         escreval("Código :",codItem)
         escreval("Descrição : ",descricao[codItem])
         escreval("Quantidade :",quantidade[codItem])
         escreval("Valor de venda : R$",precoVenda[codItem])
         escreval()
         Escreval("Editar (1) | Pesquisar Novamente (2) | Consultar Estoque (3) | Menu (ENTER)")
         leia(opc)
         se (opc = "1") entao
            escreval("=================================================================================")
            escreval("==                                   Editar                                    ==")
            escreval("=================================================================================")
            escreval
            escreva("Digite a nova quantidade para alterar o estoque: ")
            leia(novaquantidade)
            quantidade[codItem]:=novaquantidade
            escreval("O produto ",descricao[codItem]," agora possui ",quantidade[codItem]," unidades")
         senao
            se (opc = "2") entao
               pesquisarEditar()
               se (opc = "3") entao
                  consultaEstoque()
               senao
                  menu()
               fimse
            fimse
            escreval()
            Escreval("Pesquisar Novamente (1) | Menu (ENTER)")
            Leia(opc)
            se (opc="1") entao
               pesquisarEditar()
            fimse
         fimse
      fimse
      fimprocedimento


      inicio
      // Seção de Comandos
      apresentacao()

      Menu()

   fimalgoritmo

