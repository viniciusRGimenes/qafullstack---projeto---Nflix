#language: pt
@Tasty_Treats
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com os itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    @temp
    Cenario: Remover 1 item

        Dado que eu tenho os seguintes itens no carrinho:
            | nome                      | preco     | quantidade    |
            | Cup Cake de Choc. Branco  | R$ 5,50   | 1             |
            | Bolo de Morango           | R$ 40,50  | 1             |
            | Fatia de Bolo             | R$ 5,90   | 1             |
        Quando eu removo somente o item 1
        Então o valor total deve ser de "R$ 46,40"

    Cenario: remover todos os itens

        Dado que eu tenho os seguintes itens no carrinho:
            | nome                      | preco     |
            | Cup Cake de Choc. Branco  | R$ 5,50   |
            | Bolo de Morango           | R$ 40,50  |
            | Fatia de Bolo             | R$ 5,90   |
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"