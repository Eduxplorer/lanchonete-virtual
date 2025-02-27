programa {
    funcao inicio() {
    cadeia nomeCliente
 
    escreva("Bem-vindo à lanchonete digital! Por favor, digite seu nome: ")
    leia(nomeCliente)
 
    cadeia opcoesHamburguer[4] = {"CheeseBurguer", "X-Bacon", "Veggie Burguer", "TofuBurguer"}
    cadeia opcoesBebidas[4] = {"Sucos naturais", "Refrigerantes", "Água de coco", "MilkShakes"}
    cadeia opcoesPorcoes[3] = {"Porção de Batatas Fritas", "Porção de anéis de Cebola", "Porção de Nuggets"}
 
    real precoHamburguer[4] = {20.0, 22.0, 25.0, 23.0}
    real precoBebidas[4] = {6.0, 3.5, 7.5, 12.0}
    real precoPorcoes[3] = {10.0, 12.0, 15.0}
 
    escreva("Olá, ", nomeCliente, "! Escolha uma das opções abaixo:\n")
    escreva("1 - Escolher um hambúrguer\n")
    escreva("2 - Escolher uma bebida\n")
    escreva("3 - Escolher uma porção\n")
    escreva("4 - Finalizar pedido\n")
    escreva("5 - Sair\n")
 
    inteiro opcao
    inteiro quantidade
    real total = 0.0  // A variável total foi definida como real (devido ao cálculo de preço)
 
    inteiro continuar = 1
    enquanto(continuar == 1) {
      escreva("\nDigite o número da opção desejada: ")
      leia(opcao)
 
      se(opcao == 1){
        escreva("\nEscolha um hambúrguer:\n")
        para(inteiro i = 0; i < 4; i++) {
          escreva(i + 1, ". ", opcoesHamburguer[i], " - R$", precoHamburguer[i], "\n")
        }
        
        escreva("\nDigite o número do hambúrguer desejado: ")
        leia(opcao)
      se (opcao >= 1 e opcao <= 4) {
        escreva("Quantos ", opcoesHamburguer[opcao - 1], " você deseja? ")
        leia(quantidade)
        total += precoHamburguer[opcao - 1] * quantidade
        escreva("\n", opcoesHamburguer[opcao - 1], " adicionado ao seu pedido!\n")
      } senao {
        escreva("Opção Inválida! Tente novamente.\n")
      }
 
      } senao se(opcao == 2){
        escreva("\nEscolha uma bebida\n")
        para(inteiro i = 0; i < 4; i++) {
          escreva(i + 1, ". ", opcoesBebidas[i], " - R$", precoBebidas[i], "\n")
        }
        
        escreva("\nDigite o número da bebida desejada: ")
        leia(opcao)

        se(opcao >= 1 e opcao <= 4) {
          escreva("Quantas ", opcoesBebidas[opcao - 1], " você deseja? ")
          leia(quantidade)
          total += opcoesBebidas[opcao - 1] * quantidade
          escreva("\n", opcoesBebidas[opcao - 1], " adicionado ao seu pedido!\n")
        } senao {
          escreva("Opção Invalida! Tente novamente.\n")
        }
     
 
      } senao se(opcao == 3){
        escreva("\nEscolha uma porção\n")
        para(inteiro i = 0; i < 3; i++) {
          escreva(i + 1, ". ", opcoesPorcoes[i], " - R$", precoPorcoes[i], "\n")
        }
        
        escreva("\nDigite o número da porção desejada: ")
        leia(opcao)

        se(opcao >= 1 e opcao <= 3) {
          escreva("Quantas ", opcoesPorcoes[opcao - 1], " você deseja? ")
          leia(quantidade)
          total += opcoesPorcoes[opcao - 1] * quantidade

          escreva("\n", opcoesPorcoes[opcao - 1], " adicionado ao seu pedido!\n")
        } senao {
          escreva("Opção Invalida! Tente novamente.\n")
        }
        
 
      } senao se(opcao == 4){
        escreva("\nTotal do seu pedido: R$", total, "\n")
        escreva("Obrigado pela sua compra, ", nomeCliente, "!\n")
        continuar = 0
 
      } senao se(opcao == 5){
        escreva("\nSaindo do programa...\n")
        continuar = 0
      } senao {
        escreva("Opção inválida! Tente novamente.\n")
      }

    se(continuar == 1) {
    escreva("Deseja mais alguma coisa?\n")
    escreva("1 - Escolher um hambúrguer\n")
    escreva("2 - Escolher uma bebida\n")
    escreva("3 - Escolher uma porção\n")
    escreva("4 - Finalizar pedido\n")
    escreva("5 - Sair\n")
     } 
 
    }
  }
}
 