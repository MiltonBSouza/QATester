*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ScreenCapLibrary

*** Keywords ***

abrir site Automacao 
    open browser                ${site_Url}         chrome
    Maximize browser window

inserir dados

    Input text                  ${Input_Pesquisa}   CT&I
    Set Browser Implicit Wait   5s
    Click Element               ${Div_PesqAvançada}

Validar Conta conectada
    Element Should Be Visible   ${Input_ValorPesquisa}

fechar navegador
    Close browser
