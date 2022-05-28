Algoritmo "ControleDeAbastecimento"
// Disciplina   : [Linguagem e Lógica de Programação]

// Descrição   : verifica e informa se a aeronave esta apta a partir
// Autor(a)    : Jorge antonio
// Data atual  : 24/05/2022
Var
   gMedCom,cMaxLitr,kTrePla,kTreAlt,cNaAer,seguro : Real
   treTotal,lTrePla,lTreAlt,lTotal,qNecCom,qFalCom,treSeg : Real

Inicio
   // Consumo médio da aeronave  em  Litros/Kilometros= 3.6 a média
   escreval("---------------------------------------------------------------")
   escreval("Informe o consumo médio da aeronave: ")
   escreval("---------------------------------------------------------------")
   escreval("Zero é o padrão que equivale a: 3,6")
   Leia(gMedCom)
   se(gMedCom = 0)entao
      gMedCom <- 3.6
      escreval("---------------------------------------------------------------")
      escreval("Litro por kilometro acionado padrão: ",gMedCom)
   fimse
   escreval("---------------------------------------------------------------")
   // Capacidade máxima em litros do tanque
   // Segundo o site www.boeing.com.br/produtos-e-servicos/avioes-comerciais/737-ng.page) o valor maximo de combustivel é: 6.875 galões (26.020 litros)
   escreval("Infome a capacidade máxima em litros do tanque:")
   Leia(cMaxLitr)
   se(cMaxLitr = 0)entao
      escreval("---------------------------------------------------------------")
      escreval("Sem capacidade de armazenar combustivel")
      escreval("---------------------------------------------------------------")
      enquanto (cMaxLitr=0)faca
         escreval("Insira uma capacidade valida")
         leia(cMaxLitr)
      fimenquanto
   fimse
   escreval("---------------------------------------------------------------")
   // Quantidade de quilômetros do trecho planejado
   escreval("Infome a kilometragem do trecho planejado: ")
   Leia(kTrePla)
   se (kTrePla=0) entao
      enquanto (kTrePla=0)faca
         escreval("Insira um trecho planejado valido")
         leia(kTrePla)
      fimenquanto
   fimse
   escreval("---------------------------------------------------------------")
   // Quantidade de quilômetros do trecho alternativo
   escreval("Infome a kilometragem do trecho alternativo: ")
   Leia(kTreAlt)
   se (kTreAlt = 0) entao
      enquanto (kTreAlt = 0)faca
         escreval("Insira um trecho alternativo valido")
         leia(kTreAlt)
      fimenquanto
   fimse
   limpatela
   escreval("---------------------------------------------------------------")
   // Quantidade de combustível já na aeronave
   escreval("Informe a quantidade de combustivel alocado na aeronave em litros: ")
   Leia(cNaAer)
   se(cNaAer = 0)entao
      escreval("sem combustivel alocado")
   fimse
   escreval("---------------------------------------------------------------")
   limpatela
   //trecho total
   treTotal <- kTrePla+kTreAlt
   treSeg <- (1.3*treTotal)
   //outros
   lTrePla <- kTrePla * gMedCom
   lTreAlt <- kTreAlt * gMedCom
   lTotal  <- lTrePla+lTreAlt
   qNecCom <- (1.3*lTotal)
   qFalCom <- qNecCom-cNaAer

   //seguro de decolagem
   seguro <- qNecCom

   se (seguro > cMaxLitr)entao
      escreval("Voo Reprovado, reveja seu planejamento.")
      escreval("---------------------------------------------------------------")
      escreval("Sem capacidade de armazenar o combustivel necessario!")
      escreval("---------------------------------------------------------------")
      escreval("A capacidade de armazenamento de combustivel é: ",cMaxLitr)
      escreval("---------------------------------------------------------------")
      escreval("A quantidade ja alocada de combustivel é: ",cNaAer)
      escreval("---------------------------------------------------------------")
      escreval("A litragem do trecho planejado é: ",lTrePla)
      escreval("---------------------------------------------------------------")
      escreval("A litragem do trecho alternativo é: ",lTreAlt)
      escreval("---------------------------------------------------------------")
      escreval("A litragem total é: ",lTotal)
      escreval("---------------------------------------------------------------")
      escreval("Adicionando 30% da litragem para emergencia:")
      escreval("---------------------------------------------------------------")
      escreval("A quantidade necessaria de combustivel é: ",qNecCom)
      escreval("---------------------------------------------------------------")
      escreval("A quantidade que falta de combustivel é:",qFalCom)
      escreval("---------------------------------------------------------------")
   senao
      se(cNaAer < qFalCom)entao
         escreval("Voo Aprovado, bom voo!")
         escreval("---------------------------------------------------------------")
         escreval("Mas combustivel insuficiente para partir")
         escreval("---------------------------------------------------------------")
         escreval("Coloque a quantidade necessaria")
         escreval("---------------------------------------------------------------")
         escreval("Capacidade máxima do tanque em litros: ",cMaxLitr)
         escreval("")
         escreval("Kilometragem do trecho planejado: ",kTrePla)
         escreval("")
         escreval("Kilometragem do trecho alternativo: ",kTreAlt)
         escreval("")
         escreval("Kilometragem do trecho total: ",treTotal)
         escreval("")
         escreval("Kilometragem do trecho total com a margem de segurança: ",treSeg)
         escreval("")
         escreval("A quantidade necessaria de combustivel é: ",qNecCom)
         escreval("---------------------------------------------------------------")
         escreval("A capacidade de armazenamento de combustivel é: ",cMaxLitr)
         escreval("---------------------------------------------------------------")
         escreval("A quantidade ja alocada de combustivel é: ",cNaAer)
         escreval("---------------------------------------------------------------")
         escreval("A litragem do trecho planejado é: ",lTrePla)
         escreval("---------------------------------------------------------------")
         escreval("A litragem do trecho alternativo é: ",lTreAlt)
         escreval("---------------------------------------------------------------")
         escreval("A litragem total é: ",lTotal)
         escreval("---------------------------------------------------------------")
         escreval("Adicionando 30% da litragem para emergencia:")
         escreval("---------------------------------------------------------------")
         escreval("A quantidade necessaria de combustivel é: ",qNecCom)
         escreval("---------------------------------------------------------------")
         escreval("A quantidade que falta de combustivel é:",qFalCom)
         escreval("---------------------------------------------------------------")
      senao
         se(cnaAer > qFalCom)entao
            escreval("Não falta combustivel")
            escreval("---------------------------------------------------------------")
            escreval("Combustivel suficiente para partir, viagem autorizada")
            escreval("---------------------------------------------------------------")
            escreval("Voo Aprovado, bom voo!")
            escreval("---------------------------------------------------------------")
            escreval("Capacidade máxima do tanque em litros: ",cMaxLitr)
            escreval("Kilometragem do trecho planejado: ",kTrePla)
            escreval("Kilometragem do trecho alternativo: ",kTreAlt)
            escreval("Kilometragem do trecho total: ",treTotal)
            escreval("Kilometragem do trecho total com a margem de segurança: ",treSeg)
            escreval("A quantidade necessaria de combustivel é: ",qNecCom)
            escreval("---------------------------------------------------------------")
            escreval("A capacidade de armazenamento de combustivel é: ",cMaxLitr)
            escreval("---------------------------------------------------------------")
            escreval("A quantidade ja alocada de combustivel é: ",cNaAer)
            escreval("---------------------------------------------------------------")
            escreval("A litragem do trecho planejado é: ",lTrePla)
            escreval("---------------------------------------------------------------")
            escreval("A litragem do trecho alternativo é: ",lTreAlt)
            escreval("---------------------------------------------------------------")
            escreval("A litragem total é: ",lTotal)
            escreval("---------------------------------------------------------------")
            escreval("Adicionando 30% da litragem para emergencia:")
            escreval("---------------------------------------------------------------")
            escreval("A quantidade necessaria de combustivel é: ",qNecCom)
            escreval("---------------------------------------------------------------")
         fimse
      fimse
   fimse

Fimalgoritmo