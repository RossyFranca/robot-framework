***Settings***
Library     SeleniumLibrary
Resource    ../pages/HomePage.robot
Resource    ../pages/SignInPage.robot
### SETUP
Test Setup  Abrir navegador
### TEARDOWN
Test Teardown  Fechar navegador

***Test Cases***

Cenário 01: Criar um novo login
    Dado que eu estou na tela de home
    E clicar em Sign in
    E for direcionado para a tela de authentication
    E inserir um endereço de email
    E clicar em criar uma conta
    E for direcionado para a tela de criação de conta
    Quando preencher todos os campos obrigatórios do formulário 
    E clicar em register
    Então devo ser direcionado para a página da minha conta
    E estar com o usuário logado
    