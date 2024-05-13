Feature: Configurar Produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Background: Dado que eu acesse a página do produto desejado

    Scenario: Seleções de cor, tamanho e quantidade
        When eu deixar de fazer escolha de cor, tamanho ou quantidade do produto
        Then o botão que falta escolher deve mudar de cor e aparecer a mensagem: "Campo Obrigatório!"

    Scenario: Quantidade Permitida
        When eu ultrapassar a quantidade máxima permitida do mesmo produto que são dez unidades
        Then o campo que marca a quantidade deve mudar de cor e aparecer a mensagem: "Limite máximo atingido"

    Scenario: Limpar Escolhas
        When eu clicar no botão "Limpar"
        Then uma mensagem de alerta deve aparecer "Deseja limpar todas as marcações?"
        And uma caixa com os botões "Sim e Não" deve aparecer logo a baixo

