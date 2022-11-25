algoritmo "semnome"
// Função :
// Autor :
// Data : 24/11/2022
// Seção de Declarações
var
opcao :inteiro
opc : caracter
descricao :vetor[1..500] de caracter
quantidade :vetor[1..500] de inteiro
precoCusto, precoVenda :vetor[1..500] de real
codItem :inteiro
procedimento CadastrarProduto
// Seção de Declarações Internas
inicio
LimpaTela
codItem:= codItem+1
escreval("=============================")
escreval("==   Cadastro de Produto   ==")
escreval("=============================")
Escreval
Escreva("Digite o produto que deseja cadastrar: ")
Leia(descricao[codItem])
Escreval
escreval("Todas as opções abaixo devem ser digitadas em forma de números!!")
Escreval
Escreva("Digite a quantidade de produtos a cadastrar: ")
leia(quantidade[codItem])
escreva ("Preço de CUSTO: R$ ")
leia (precoCusto[codItem])
escreva ("Preço de VENDA: R$ ")
leia (precoVenda[codItem])

LimpaTela
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
repita
   LimpaTela
   Escreval("=================================")
   Escreval("|      Sistema de Estoque       |")
   Escreval("|                               |")
   Escreval("|    1- Cadastrar Produto       |")
   Escreval("|    2 - Editar Produto         |")
   Escreval("|    3 - Pesquisar              |")
   Escreval("|    4 - Venda de Produto       |")
   Escreval("|    5 - Relatório de Vendas    |")
   Escreval("|    6 - Sair                   |")
   Escreval("|                               |")
   Escreval("=================================")
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





fimalgoritmo
