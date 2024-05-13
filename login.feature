Feature: Login na Plataforma

    Feature Description
    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Background: Dado que eu acesse a página de login da EBAC-SHOP

    Scenario: Autenticação Válida
        When eu digitar o usuário "fulano123@gmail.com"
        And senha "fulano@123"
        Then o usuário deve ser direcionado para a tela de checkout

    Scenario: Autenticação Inválida
        When eu digitar o usuário "fulano321@gmail.com"
        And senha "321asdf"
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


    Scenario Outline: Autenticar Multiplo Usuários
        When eu digitar o <usuario>
        And a <senha>
        Then deve exibir a <mensagem> de sucesso e o usuário deve ser direcionado para a tela de checkout

        Examples:
            | joao123@gmail.com   | joao123  | Olá João!  |
            | maria123@gmail.Como | maria123 | Olá Maria! |
            | jose123@gmail.Como  | jose123  | Olá José!  |


