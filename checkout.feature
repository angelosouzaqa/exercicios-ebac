#language: pt

Funcionalidade: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar a minha compra

    Contexto: Dado que eu acesse a página de cadastro da EBAC-SHOP

    Cenario: Campos Obrigatórios
        Quando eu não preencher os campos marcados com asterísco
        Então uma mensagem deve aparecer "Favor preencher o campo obrigatório"

    Cenario: E-mail com formato inválido
        Quando eu digitar um e-mail com farmato invalido
        Então deve aparecer a seguinte mensagem de erro: "E-mail com formato inválido"

    Cenario: Campos Vazios
        Quando eu deixar de preencher algum campo
        Então deve aparecer a seguinte mensagem de alerta: "Preencher campo vazio!"

