algoritmo "Controle de Estoque"
// Função : Realizar o cadastro e controle de produtos em estoque de um estabelecimento
// Autor : Vinicius Costa
// Data : 24/11/2022
// Seção de Declarações
var
opcao :inteiro
opc : caracter
descricao :vetor[1..100] de caracter
quantidade :vetor[1..100] de inteiro
precoCusto, precoVenda :vetor[1..100] de real
codItem :inteiro

Procedimento Apresentacao
inicio
timer 100
Escreval("    ____    ______   __  __    __      __  _____   _   _   _____     ____    _ ")
Escreval("   |  _ \  |  ____| |  \/  |   \ \    / / |_   _| | \ | | |  __ \   / __ \  | |")
Escreval("   | |_) | | |__    | \  / |    \ \  / /    | |   |  \| | | |  | | | |  | | | |")
Escreval("   |  _ <  |  __|   | |\/| |     \ \/ /     | |   | . ` | | |  | | | |  | | | |")
Escreval("   | |_) | | |____  | |  | |      \  /     _| |_  | |\  | | |__| | | |__| | |_|")
Escreval("   |____/  |______| |_|  |_|       \/     |_____| |_| \_| |_____/   \____/  (_)")
Escreval("                                            ____  ")
Escreval("                                   /\      / __ \ ")
Escreval("                                  /  \    | |  | |")
Escreval("                                 / /\ \   | |  | |")
Escreval("                                / ____ \  | |__| |")
Escreval("                               /_/    \_\  \____/ ")
Escreval("            _____   _____    _____   _______   ______   __  __            ")
Escreval("           / ____| |_   _|  / ____| |__   __| |  ____| |  \/  |     /\    ")
Escreval("          | (___     | |   | (___      | |    | |__    | \  / |    /  \   ")
Escreval("           \___ \    | |    \___ \     | |    |  __|   | |\/| |   / /\ \  ")
Escreval("           ____) |  _| |_   ____) |    | |    | |____  | |  | |  / ____ \ ")
Escreval("          |_____/  |_____| |_____/     |_|    |______| |_|  |_| /_/    \_\")
Escreval("            ______    _____   _______    ____     ____    _    _   ______ ")
Escreval("           |  ____|  / ____| |__   __|  / __ \   / __ \  | |  | | |  ____|")
Escreval("           | |__    | (___      | |    | |  | | | |  | | | |  | | | |__   ")
Escreval("           |  __|    \___ \     | |    | |  | | | |  | | | |  | | |  __|  ")
Escreval("           | |____   ____) |    | |    | |__| | | |__| | | |__| | | |____ ")
Escreval("           |______| |_____/     |_|     \____/   \___\_\  \____/  |______|")
timer 0
Escreval
Escreval
Escreval
Escreval("Integrantes do projeto:")
timer 500
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
   Escreval("==================================================================================")
   Escreval("|                               Sistema de Estoque                               |")
   Escreval("|                                                                                |")
   Escreval("|                             1 - CADASTRAR PRODUTO                              |")
   Escreval("|                             2 - EDITAR PRODUTO                                 |")
   Escreval("|                             3 - PESQUISAR                                      |")
   Escreval("|                             4 - VENDA DE PRODUTO                               |")
   Escreval("|                             5 - RELATÓRIO DE VENDAS                            |")
   Escreval("|                             6 - SAIR                                           |")
   Escreval("|                                                                                |")
   Escreval("==================================================================================")
   Escreval()
   Escreva("Digite a opção desejada: ")
   Leia(opcao)

   Escolha (opcao)
   caso 1
      LimpaTela
      CadastrarProduto()
   caso 2
      LimpaTela
      EditarProduto()
   caso 3
      LimpaTela
      Pesquisar()
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
escreval("==================================================================================")
escreval("==                             Cadastro de Produto                              ==")
escreval("==================================================================================")
Escreval
Escreva("Digite o produto que deseja cadastrar: ")
Leia(descricao[codItem])
Escreval
Escreval
Escreval
escreval("==================================================================================")
escreval("|    __                                                                  __      |")
escreval("|   |..|                                                                |..|     |")
escreval("|  _|..|_          Todas as opções abaixo devem apenas números!!       _|..|_    |")
escreval("|  \..../                                                              \..../    |")
escreval("|   \../                                                                \../     |")
escreval("|    \/                                                                  \/      |")
escreval("==================================================================================")
Escreval
Escreva("Digite a quantidade de produtos a cadastrar: ")
leia(quantidade[codItem])
escreva ("Preço de CUSTO: R$ ")
leia (precoCusto[codItem])
escreva ("Preço de VENDA: R$ ")
leia (precoVenda[codItem])

LimpaTela
escreval("==================================================================================")
escreval("==                                   RESUMO                                     ==")
escreval("==================================================================================")
escreval("Você cadastrou  : ",descricao[coditem])
escreval("Quantidade      :",quantidade[coditem])
escreval("Custo           : R$ ",precoCusto[coditem]:1:2)
escreval("Preço           : R$ ",precoVenda[coditem]:1:2)
Escreval
Escreval("Tecle enter para retornar ao menu")
Leia(opc)
// Seção de Comandos
fimprocedimento




inicio
// Seção de Comandos
//apresentacao()

Menu()

fimalgoritmo
