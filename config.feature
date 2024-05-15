#language: pt

Funcionalidade: Configurar Produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto: Dado que eu acesse a página do produto desejado

    Cenario: Seleções de cor, tamanho e quantidade
        Quando eu deixar de fazer escolha de cor, tamanho ou quantidade do produto
        Então o botão que falta escolher deve mudar de cor e aparecer a mensagem: "Campo Obrigatório!"

    Cenario: Quantidade Permitida
        Quando eu ultrapassar a quantidade máxima permitida do mesmo produto que são dez unidades
        Então o campo que marca a quantidade deve mudar de cor e aparecer a mensagem: "Limite máximo atingido"

    Cenario: Limpar Escolhas
        Quando eu clicar no botão "Limpar"
        Então uma mensagem de alerta deve aparecer "Deseja limpar todas as marcações?"
        E uma caixa com os botões "Sim e Não" deve aparecer logo a baixo

