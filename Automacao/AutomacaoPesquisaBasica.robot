*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ScreenCapLibrary

*** Keywords ***

abrir site Automacao 
    open browser                ${site_Url}         chrome
    Maximize browser window

inserir dados

    Input text                  ${Input_Pesquisa}   CT
    Click Element               ${Input_Search}

Validar Conta conectada
    Element Should Be Visible   ${Input_ValorPesquisa}

fechar navegador
    Close browser
