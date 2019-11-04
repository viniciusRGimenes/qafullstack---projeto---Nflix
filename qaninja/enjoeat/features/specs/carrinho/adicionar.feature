#language: pt

@Tasty_Treats
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar a compra
    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar itens ao meu carrinho

    Cenario: Adicionar 1 unidade

        Dado que o produto desejado é "Cup Cake de Choc. Branco"
        E o valor do produto é de "R$ 5,50"
        Quando eu adiciono 1 unidade(s)
        Então deve ser adicionado 1 unidade(s) desse item
        E o total deve ser de "R$ 5,50"

    Cenario: Adicionar 2 unidades

        Dado que o produto desejado é "Fatia de Bolo"
        E o valor do produto é de "R$ 5,90"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) desse item
        E o total deve ser de "R$ 11,80"

    Cenario: Adicionar varios itens

        Dado que os produtos desejados são:
            | nome                      | preco     | quantidade    |
            | Cup Cake de Choc. Branco  | R$ 5,50   | 1             |
            | Bolo de Morango           | R$ 40,50  | 2             |
            | Fatia de Bolo             | R$ 5,90   | 1             |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o total deve ser de "R$ 92,40"

