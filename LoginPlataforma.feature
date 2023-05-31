#language:pt

Funcionalidade: Login na plataforma
Como cliente da EBAC SHOP
Quero fazer o login da plataforma 
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de Login

Cenário: Login com credenciais válidas
Quando eu digitar "joao@ebac.com.br" 
E a senha "joao123" 
Então deverá ser direcionado para a tela de checkout

Cenário: Senha inválido
Quando eu digitar "joao@ebac.com.br"
E a senha "joao122"
Então deve exibir o alerta "Usuário ou senha inválidos"

Cenário: Login com credenciais inválidas
Quando eu digitar "joao@ebai.com.br"
E a senha "joao123"
Então deve exibir o alerta "Usuário ou senha inválidos"

