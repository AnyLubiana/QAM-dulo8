            #language:pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro

            Cenário: Sucesso no checkout
            Quando Eu preencher todos os campos obrigatórios
            E clicar em Finalizar Compra
            Então deve direcionar para a próxima página do checkout

            Esquema do Cenário: Validação de email
            Dado que esteja realizando cadastro
            E preencha o campo <email> com um e-mail em formato inválido
            Então de receber <mensagem> de erro

            Exemplos:
            | email             | mensagem                              |
            | joaoebac.com.br   | "Por favor, digite um e-mail válido." |
            | joao@ebac.com.com | "Por favor, digite um e-mail válido." |
            | joao@com.br       | "Por favor, digite um e-mail válido." |
            | @.com.br          | "Por favor, digite um e-mail válido." |

            Cenário: Cadastro com campos vazios
            Quando algum campo, que não seja obrigatório, estiver em branco
            E tentar cadastrar
            Então deve exibir uma mensagem de alerta "Alguns campos parecem estar vazios. Deseja continuar assim mesmo?"




