programa {

    funcao escrevaLinha1() {

        escreva("╭───────── · · 🍔 · · ────────╮")
    }

    funcao escrevaLinha2() {
        escreva("╰───────── · · 🍔 · · ────────╯")
    }
    // Função para exibir o menu de opções  
    // -> Criada para evitar repetição de código e facilitar manutenção  
    funcao exibirMenu() {
        escreva("\nEscolha uma opção:\n")
        escreva("1 - Escolher um hambúrguer\n")
        escreva("2 - Escolher uma bebida\n")
        escreva("3 - Escolher uma porção\n")
        escreva("4 - Finalizar pedido\n")
        escreva("5 - Sair\n")
    }

    // Função para escolher um item do cardápio  
    // -> Reduz código duplicado e organiza melhor a lógica de seleção  
    funcao real escolherItem(cadeia itens[], real precos[], inteiro tamanho) { // "tamanho" define quantos itens há na categoria  
        inteiro opcao, quantidade
        para (inteiro i = 0; i < tamanho; i++) {
            escreva(i + 1, ". ", itens[i], " - R$", precos[i], "\n")
        }
        escreva("\nDigite o número do item desejado: ")
        leia(opcao)

        se (opcao >= 1 e opcao <= tamanho) {
            escreva("Quantos ", itens[opcao - 1], " você deseja? ")
            leia(quantidade)
            limpa()
            escreva("\n", itens[opcao - 1], " adicionado ao seu pedido!\n")
            retorne precos[opcao - 1] * quantidade
        } senao {
            escreva("Opção inválida! Tente novamente.\n")
            retorne 0
        }
    }

    funcao inicio() {
        cadeia nomeCliente
        inteiro opcao, continuar = 1
        real total

        // Definição dos itens do cardápio  
        cadeia opcoesHamburguer[4] = {"CheeseBurguer", "X-Bacon", "Veggie Burguer", "TofuBurguer"}
        cadeia opcoesBebidas[4] = {"Sucos naturais", "Refrigerantes", "Água de coco", "MilkShakes"}
        cadeia opcoesPorcoes[3] = {"Porção de Batatas Fritas", "Porção de Anéis de Cebola", "Porção de Nuggets"}

        real precoHamburguer[4] = {20.0, 22.0, 25.0, 23.0}
        real precoBebidas[4] = {6.0, 3.5, 7.5, 12.0}
        real precoPorcoes[3] = {10.0, 12.0, 15.0}

        enquanto (continuar == 1) { 
            total = 0.0  // Zera o total para um novo pedido
            
            escrevaLinha1()
            escreva("\nBem-vindo à lanchonete digital!\n")
            escrevaLinha2()
            escreva("\n\nPor favor, digite seu nome: ")
            leia(nomeCliente)
            limpa()
            escreva("Olá, ", nomeCliente, "! Escolha uma das opções abaixo:\n")

            enquanto (verdadeiro) { 
                exibirMenu() // Exibe o menu  
                escreva("\nDigite o número da opção desejada: ")
                leia(opcao)
                limpa() 

                  
                se (opcao == 1) {
                    total += escolherItem(opcoesHamburguer, precoHamburguer, 4)
                } senao se (opcao == 2) {
                    total += escolherItem(opcoesBebidas, precoBebidas, 4)
                } senao se (opcao == 3) {
                    total += escolherItem(opcoesPorcoes, precoPorcoes, 3)
                } senao se (opcao == 4) { 
                    escreva("\nTotal do seu pedido: R$", total, "\n")
                    escreva("Obrigado pela sua compra, ", nomeCliente, "!\n")
                    escreva("Deseja iniciar um novo pedido? (1 - Sim / 2 - Não): ")
                    leia(continuar)
                    limpa()

                    se (continuar != 1) {   
                        escreva("\nSaindo do sistema...\n")
                        continuar = 0
                    }
                    pare // Sai do loop  
                } senao se (opcao == 5) { 
                    escreva("\nSaindo do sistema...\n")
                    continuar = 0
                    pare
                } senao {  
                    escreva("Opção inválida! Tente novamente.\n")
                }
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3943; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */