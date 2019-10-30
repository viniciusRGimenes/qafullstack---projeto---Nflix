#language:pt

Funcionalidade: Qual o prato do Dia
    Queremos saber qual é o prato do dia na capital paulista

    Esquema do Cenário: Prato do dia

        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser <resposta>

        Exemplos:

        | dia               | resposta              |
        | "segunda-feira"   | "Virado a Paulista"   |
        | "terça-feira"     | "Dobradinha"          |
        | "quarta-feira"    | "Feijoada"            |
        | "quinta-feira"    | "Macarronada"         |
        | "sexta-feira"     | "Filé de Merluza"     |
        | "sábado"          | "Veja o Cardápio"     |
        | "domingo"         | "Fechado"             |
        | "xpto"            | "Dia inválido"        |
        | "abx123"          | "Dia inválido"        |

