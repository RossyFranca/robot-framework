***Settings***
Library  SeleniumLibrary

***Variables***
${URL_BASE}     http://automationpractice.com/index.php
${BROWSER}      chrome

***Keywords***

Abrir navegador
    Open Browser   ${URL_BASE}   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Escrever
    [Arguments]  ${CssSelector}  ${Text}
    Input text  css=${CssSelector}  ${Text}
#
Clicar
    [Arguments]  ${CssSelector}
    Wait Until Page Contains Element  css=${CssSelector}  30
    Click element  css=${CssSelector}
