Feature: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar a minha compra

    Background: Dado que eu acesse a página de cadastro da EBAC-SHOP

    Scenario: Campos Obrigatórios
        When eu não preencher os campos marcados com asterísco
        Then uma mensagem deve aparecer "Favor preencher o campo obrigatório"

    Scenario: E-mail com formato inválido
        When eu digitar um e-mail com farmato invalido
        Then deve aparecer a seguinte mensagem de erro: "E-mail com formato inválido"

    Scenario: Campos Vazios
        When eu deixar de preencher algum campo
        Then deve aparecer a seguinte mensagem de alerta: "Preencher campo vazio!"


