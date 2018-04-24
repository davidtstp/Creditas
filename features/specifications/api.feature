# language: pt
@api
Funcionalidade: Api

  Cenário: Executrar um post request
    Dado que o usuário executa um post na api jsonplaceholder
    Então a resposta deve ser 201
    E o body deve conter as informações enviadas no post
