# language: pt
@windows
Funcionalidade: Windows

  Contexto: Teste de abertura em uma nova aba
    Dado que eu esteja no site windows

  Cenário: Abertura de nova aba no browser
    Quando eu clicar no link Click Here
    Então o sistema abre uma nova aba
    E o texto "New Window" deve ser exibido
