***Settings***
Library  SeleniumLibrary
Resource   ./DefaultPage.robot

***Variables***
${botao_carrinho}       a[title='View my shopping cart']
${input_pesquisa}       input#search_query_top
${botao_pesquisar}      button[name='submit_search']
${titulo_da_busca}      h1.page-heading.product-listing
${produto_pesquisado}   a.product-name[title='Faded Short Sleeve T-shirts']
${titulo_da_pagina}     My Store
${botao_signin}         a.login

${button_add_to_cart}   a[title='Add to cart'] > span
${card_item}            img[title='Faded Short Sleeve T-shirts']
***Keywords***

Dado que eu estou na tela de home
    Title should be  ${titulo_da_pagina}

Quando eu pesquisar pelo produto "${PRODUTO}"
    Escrever  ${input_pesquisa}  ${PRODUTO}
    Clicar  ${botao_pesquisar}

Então o produto "${PRODUTO}" deve ser listado na página de resultados
    Sleep  3
    Title Should Be  Search - My Store
    Page Should Contain Element   css=${produto_pesquisado}

Quando eu clicar no carrinho
    Clicar  ${botao_carrinho}

E clicar em Sign in
    Clicar  ${botao_signin}

E clicar em adicionar ao carrinho
    Wait Until Page Contains Element  css=${button_add_to_cart}
    Mouse Over  css=${card_item} 
    Clicar  ${button_add_to_cart}
