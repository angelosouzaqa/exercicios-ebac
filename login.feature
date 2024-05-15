#language: pt

Funcionalidade: Login na Plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Contexto: Dado que eu acesse a página de login da EBAC-SHOP

    Cenario: Autenticação Válida
        Quando eu digitar o usuário "fulano123@gmail.com"
        E senha "fulano@123"
        Então o usuário deve ser direcionado para a tela de checkout

    Cenario: Autenticação Inválida
        Quando eu digitar o usuário "fulano321@gmail.com"
        E senha "321asdf"
        Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


    Esquema do Cenario: Autenticar Multiplo Usuários
        Quando eu digitar o <usuario>
        E a <senha>
        Então deve exibir a mensagem de sucesso: "Bem vindo a EBAC-SHOP" e o usuário deve ser direcionado para a tela de checkout

        Exemplos:
            | joao123@gmail.com   | joao123  | Olá João!  |
            | maria123@gmail.Como | maria123 | Olá Maria! |
            | jose123@gmail.Como  | jose123  | Olá José!  |


