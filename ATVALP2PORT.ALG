Algoritmo "Atvalp2port"
// Disciplina   : [Linguagem e L�gica de Programa��o]

// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Jorge antonio
// Data atual  : 25/05/2022
tipo
   cad_vacina = registro
      codigo : inteiro
      nome : caractere
      cpf :  caractere
      vacina : caractere
      data : caractere
      nLote :inteiro
   fimregistro
var
   cadastro : vetor[1..999] de cad_vacina
   cod :vetor[1..999] de inteiro
   i,j,menu,sair,ncad : inteiro
   cpF: caractere
Inicio
   sair <- 4

   menu <- 0

   enquanto (menu <> sair) faca
         escreval("Selecione uma op��o:")
         escreval("Selecione 1 para Cadastrar Vacina")
         escreval("Selecione 2 para Listar Aplica��es")
         escreval("Selecione 3 para Consultar por CPF")
         escreval("Selecione 4 para Sair")
         leia(menu)

      escolha (menu)
      caso 1
         //1 - Cadastrar Vacina
         limpatela
         escreval("------------------------------------------------")
         escreval("Cadastro de vacina")
         escreval("------------------------------------------------")
         escreval("quantos cadastros gostaria de realizar?")
         escreval("------------------------------------------------")
         leia(ncad)
         escreval("------------------------------------------------")
         limpatela

         para i de 1 ate ncad faca
            escreval("Seu cadastro sera realizado")
            
            escreval("==================================")
            escreval("O codigo do seu registro �:",cod[i])
            escreval("Insira seu cpf:")
            leia(cadastro[i].cpf)
            escreval("Insira seu nome:")
            leia(cadastro[i].nome)
            escreval("Insira a vacina aplicada:")
            leia(cadastro[i].vacina)
            escreval("Insira a data:")
            leia(cadastro[i].data)
            escreval("O Numero do lote �:")
            leia(cadastro[i].nLote)
            escreval("==================================")
         fimpara

      caso 2
         // 2 - Listar Aplica��es retorna os anteriores
         escreval("------------------------------------------------")
         escreval("Listagem de aplica��es")
         escreval("------------------------------------------------")
         para i de 1 ate ncad faca
            escreval("==================================")
            escreval(cadastro[i].codigo)
            escreval(cadastro[i].cpf)
            escreval(cadastro[i].nome)
            escreval(cadastro[i].vacina)
            escreval(cadastro[i].data)
            escreval(cadastro[i].nLote)
            escreval("==================================")
         fimpara

      caso 3
         //3 - Consultar por CPF
         limpatela
         escreval("------------------------------------------------")
         escreval("Consultar por CPF")
         escreval("------------------------------------------------")
         escreval("digite o cpf a cnsulta")
         escreval("------------------------------------------------")
         leia(cpF)
         se(cpF = cadastro[i].cpf) entao
            cpF <- cadastro[i].cpf
            escreval("Cpf existente",cpF)
         senao
            escreval("Cpf nao encontrado")
         fimse

      caso 4
         //4 - Sair

         escreval("Saindo")
      outrocaso
         escreval("Op��o Invalida")
      fimescolha
   fimenquanto



Fimalgoritmo