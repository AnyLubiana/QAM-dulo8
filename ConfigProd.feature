            #language:pt

            Funcionalidade: Tela de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu gosto, tamanho e quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página de um produto

            Cenário: Configuração válida
            Quando eu escolher o tamanho, a cor e a quantidade de itens
            Então deve ser permitido o envio do item ao carrinho

            Cenário: Configuração inválida
            Quando eu tentar enviar o item ao carrinho
            E não tiver selecionado o tamanho ou a cor ou a quantidade
            Então deve enviar a mensagem de erro "Selecione a cor o tamanho e a quantidade"
            
            Cenário: limite de produtos por venda
            Quando tenho 10 produtos do carrinho
            E tento adicionar mais um item ao carrinho
            Então o sistema exibe a mensagem "Você tentou adicionar ao carrinho mais itens que ele suporta. Por favor, escolha até 10 produtos!"

            Cenário: Clicar no botão limpar 
            Dado que tenho pelo menos um produto no carrinho
            Quando eu clicar no botão limpar
            Então o carrinho deve ficar vazio
