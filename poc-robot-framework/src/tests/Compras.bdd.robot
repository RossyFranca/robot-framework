***Settings***
Library     SeleniumLibrary
Resource    ../pages/DefaultPage.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/ComprasPage.robot

### SETUP
Test Setup  Abrir navegador
### TEARDOWN
#Test Teardown  Fechar navegador

***Test Cases***

Cenário 01: Verificar carrinho de compras
    Dado que eu estou na tela de home
    Quando eu clicar no carrinho
    Então devo ser direcionado a tela de compras
    E eu devo ter listado meu item selecionado para compra

Cenário 02: Efetuar uma compra
    Dado que eu estou na tela de home
    Quando eu pesquisar pelo produto "Shirt"
    E clicar em adicionar ao carrinho
    E clicar e continuar com checkout
    E for direcionado a tela de pedidos
    E ir para o passo seguinte e efetuar login
    E confirmar os termos de serviço para entrega
    E escolher como forma de pagamento cartão
    E confirmar o pedido
    Então devo ter minha compra confirmada
