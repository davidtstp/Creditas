# language: pt
Funcionalidade: Login

  Contexto: Tela de login do site da Creditas
    Dado que eu esteja na tela de login do site "https://app.creditas.com.br/login" da Creditas

  Cenário: Login com CPF
    Quando eu preencher os campos de login com CPF e senha validos
    E clicar no botão "Entrar"
    Então o sistema retorna uma mensagem de "login efetuado com sucesso"
    E sou redirecionado para a tela principal

  Cenário: Login com Email
    Quando eu preencher os campos de login com Email e senha validos
    E clicar no botão "Entrar"
    Então o sistema retorna uma mensagem de "login efetuado com sucesso"
    E sou redirecionado para a tela principal

  Cenário: Esqueci a senha
    Quando eu clicar no link "Esqueci a senha"
    Então sou redirecionado para uma tela de inserção de email
    E insiro meu email no campo de email
    E clico no botão "Recuperar a senha"
    Então o sistema retorna uma mensagem informando que o link de redefinição foi enviado para o email

  Cenário: Login com CPF invalido
    Quando eu preencher os campos de login com CPF inválido
    E clicar no botão "Entrar"
    Então o sistema retorna uma mensagem informando "CPF inválido"

  Cenário: Login com Email inválido
    Quando eu preencher os campos de login com Email inválido
    E clicar no botão "Entrar"
    Então o sistema retorna uma mensagem informando "Email inválidos"

  Cenário: Login com senha inválido
    Quando eu preencher os campos de login com Email valido e senha inválida
    E clicar no botão "Entrar"
    Então o sistema retorna uma mensagem informando "Senha inválida"

  Cenário: Login com campos em branco
    Quando eu não preencher os campos de cpf/email e senha
    E clicar no botão "Entrar"
    Então o sistema destaca em vermelho os campos obrigatórios e exibe uma mensagem "Preencha esse campo para continuar"

  Cenário: Botão ajuda
    Quando eu clicar no botão ajuda
    Então o sistema deve exibir um modal com as informações de contato do suporte do Creditas
