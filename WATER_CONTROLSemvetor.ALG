Algoritmo "water_control"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Descri��o   : ele retorna o maior consumo de agua de um apartamento
// Autor(a)    : jorge antonio aguiar da concei�ao
// Data atual  : 20/05/2022
Var
   // Se��o de Declara��es das vari�veis
   n,i,j,gasto,maior : inteiro
   gmetc : real
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
        maior <- 1
   para i de 1 ate n passo 1 faca
      escreval("informe a quantidade de agua gasta pelo apartamento ",i," em litros:")
      leia(gasto)
      se (gasto > maior)entao
         maior <- gasto
         escreval(maior)
      fimse
   fimpara
   gmetc <- maior/1000
   escreval("--------------------------------------------------------------")
   escreval("O maior gasto foi de ",gmetc," metros cubicos")
   escreval("--------------------------------------------------------------")
Fimalgoritmo