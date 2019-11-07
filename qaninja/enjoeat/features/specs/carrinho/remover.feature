#language: pt
@Tasty_Treats
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com os itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Contexto: Itens no carrinho
        Dado que eu tenho os seguintes itens no carrinho:
            | nome                      | preco     | quantidade    |
            | Cup Cake de Choc. Branco  | R$ 5,50   | 1             |
            | Bolo de Morango           | R$ 40,50  | 1             |
            | Fatia de Bolo             | R$ 5,90   | 1             |

    
    Esquema do Cenario: Remover irem

            Quando eu removo somente o <item>
            Então o total deve ser de <total>

            Exemplos:
            | item  | total         |
            | 0     | "R$ 46,40"   |
            | 1     | "R$ 11,40"   |
            | 2     | "R$ 46,00"    |

    Cenario: remover todos os itens

        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

    Cenario: Limpar carrinho

        Quando eu limpo o meu carrinho
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"