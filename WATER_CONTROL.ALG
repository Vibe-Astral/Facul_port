Algoritmo "water_control"
// Disciplina   : [Linguagem e Lógica de Programação]
// Descrição   : ele retorna o maior consumo de agua de um apartamento
// Autor(a)    : jorge antonio aguiar da conceiçao
// Data atual  : 20/05/2022
Var
   // Seção de Declarações das variáveis
   n,i,j,gasto : inteiro
   maior,gmetc : real
   apts : vetor [1..9999] de real
Inicio
   //informando o numero de apartamentos para delimitar o vetor
   escreval("--------------------------------------------------------------")
   escreval("Informe a quantidade de apartamentos: ")
   leia(n)
   escreval("--------------------------------------------------------------")
   // caso o numero seja 0 ele para o codigo
   se ( n = 0) entao
      escreval("Sem apartamentos para analisar")
      escreval("--------------------------------------------------------------")
      debug (n = 0)
   fimse
   //estrutura de repetiçao que guarda o numero de apartamentos e o gasto de agua
   para i de 1 ate n faca
      escreval("Informe o gasto de água do apartamento ", i, " em litros:")
      leia(gasto)
      apts[i] <- gasto
      escreval("--------------------------------------------------------------")
   fimpara
   limpatela
   //colocando o maior valor no primeiro vetor para facilitar o percurso
   maior <- apts[1]
   //estrutura para determinar o maior gasto
   para i de 2 ate n faca
      se (apts[i] > maior)entao
         maior <-apts[i]
      fimse
   fimpara
   //transformando litros para metros cubicos
   gmetc <- maior/1000
   escreval("--------------------------------------------------------------")
   escreval("O maior gasto foi de ",gmetc," metros cubicos")
   escreval("--------------------------------------------------------------")
Fimalgoritmo