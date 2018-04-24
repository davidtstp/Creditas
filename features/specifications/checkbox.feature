# language: pt
@checkbox
Funcionalidade: Checkbox

  Contexto: Validação do botão de adicionar e remover checkbox
    Dado que eu esteja no site do dynamic_controls

  Cenário: Remover checkbox
    Quando eu clicar no botão de remover checkbox
    Então o sistema retorna a mensagem de feedback da remoção "It's gone!"
    E o checkbox não deve ficar visivel

  Cenário: Adicionar checkbox
    Quando eu clicar no botão de adicionar checkbox
    Então o sistema retorna a mensagem de feedback da adição "It's back!"
    E o checkbox fica visivel
