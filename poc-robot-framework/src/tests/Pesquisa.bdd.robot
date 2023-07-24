***Settings***
Library     SeleniumLibrary
Resource    ../pages/DefaultPage.robot
Resource    ../pages/HomePage.robot

### SETUP
Test Setup  Abrir navegador
### TEARDOWN
Test Teardown  Fechar navegador

***Test Cases***
Cenário 01: Pesquisar um produto existente
    Dado que eu estou na tela de home
    Quando eu pesquisar pelo produto "Shirt"
    Então o produto "Shirt" deve ser listado na página de resultados

    