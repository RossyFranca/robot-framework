***Settings***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ./DefaultPage.robot



***Variables***
${title_login}    Login - My Store
${header}                    div#center_column > h1.page-heading
${input_email_create}        input#email_create
${create_an_account_button}  button#SubmitCreate
${create_an_account_header}  h1.page-heading
${submit_button}             button#submitAccount
${title_my_account}          My account - My Store
${button_logged_user}        span

## FORMULÁRIO
#Campos obrigatórios
${gender}                    input#id_gender1
${input_first_name}          input#customer_firstname
${input_last_name}           input#customer_lastname
${input_password}            input#passwd    
${input_address}             input#address1
${input_city}                input#city
${select_state}              select#id_state
${input_postal_code}         input#postcode
${input_mobile_phone}        input#phone_mobile

${complete_name}
***Keywords***

E for direcionado para a tela de authentication
    Wait Until Page Contains Element  css=${header}
    Sleep  3
    Title should be  ${title_login}

E inserir um endereço de email
    ${email_random}=  FakerLibrary.email
    Escrever  ${input_email_create}   ${email_random}

E clicar em criar uma conta 
    Clicar  ${create_an_account_button}

E for direcionado para a tela de criação de conta
    Wait Until Page Contains Element  css=${submit_button} 
    Element Attribute Value Should Be  css=${create_an_account_header}  innerText  CREATE AN ACCOUNT

Quando preencher todos os campos obrigatórios do formulário
    Sleep  2
    Clicar  ${gender}

    ${state}=  FakerLibrary.Random Int  max=51
    ${state}=  Convert To String  ${state}
    Select From List By Index  css=${select_state}  ${state}

    ${first_name}  FakerLibrary.First Name Male
    Escrever  ${input_first_name}  ${first_name}

    ${last_name}  FakerLibrary.Last Name 
    Escrever  ${input_last_name}  ${last_name}
    Set Suite Variable  ${complete_name}  ${first_name} ${last_name}

    ${address}=  FakerLibrary.Address
    Escrever  ${input_address}  ${address}

    ${city}=  FakerLibrary.City
    Escrever  ${input_city}  ${city}

    Escrever  ${input_postal_code}  00000

    
    Escrever  ${input_mobile_phone}  999999999

    ${password}=  FakerLibrary.password  5
    Escrever  ${input_password}  ${password}

E clicar em register
    Clicar  ${submit_button}

Então devo ser direcionado para a página da minha conta
    Wait Until Page Contains Element  css=body#my-account
    Title should be  ${title_my_account}

E estar com o usuário logado
   
    Element Attribute Value Should Be  css=${button_logged_user}  innerText  ${complete_name}