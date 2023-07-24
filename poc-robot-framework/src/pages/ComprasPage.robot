***Settings***
Library  SeleniumLibrary
Resource   ./DefaultPage.robot


***Variables***
${titulo_da_pagina}             Order - My Store
${item_de_compra}               tr#product_2_7_0_487916
${mensagem_de_carrinho_vazio}   div#center_column > p
${proceed_to_checkout}          a[title='Proceed to checkout'] 

${input_login}                  input#email
${input_password}               input#passwd
${button_singin}                button#SubmitLogin
${header_order}                 h1#cart_title
${confirm_address}              button[name='processAddress']
${terms_of_service}             input#cgv
${button_process_carrier}       button[name='processCarrier']
${payment_card}                 p.payment_module
${button_submit_order}          button.button.btn.btn-default.button-medium
${order_confirmation}           //*[@id="center_column"]/div/p/strong

***Keywords***
Então devo ser direcionado a tela de compras
    Wait Until Page Contains Element  css=h1#cart_title
    Title Should Be  Order - My Store

E eu devo ter listado meu item selecionado para compra
    Wait Until Page Contains Element  css=h1#cart_title
    Page Should Contain Element  css=${item_de_compra}
    Page Should Not Contain Textfield  ${mensagem_de_carrinho_vazio}  Your shopping cart is empty.

E clicar e continuar com checkout
    Sleep  2
    Clicar  ${proceed_to_checkout}

E for direcionado a tela de pedidos
    Sleep  2
    Wait Until Page Contains Element  css=${header_order}                 
    Title Should Be  Order - My Store  

E ir para o passo seguinte e efetuar login
    Go To  http://automationpractice.com/index.php?controller=order&step=1
    Escrever  ${input_login}  taylordave@yahoo.com
    Escrever  ${input_password}  &4cHk
    Clicar  ${button_singin}
    Clicar  ${confirm_address}

E confirmar os termos de serviço para entrega
    Clicar  ${terms_of_service} 
    Clicar  ${button_process_carrier}

E escolher como forma de pagamento cartão
    Clicar  ${payment_card} 

E confirmar o pedido
    Clicar  ${button_submit_order}

Então devo ter minha compra confirmada
    Element Attribute Value Should Be  xpath=${order_confirmation}  innerText  Your order on My Store is complete.
     