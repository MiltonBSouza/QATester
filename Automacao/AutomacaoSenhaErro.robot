*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Keywords ***

abrir site Automacao 
    open browser                ${site_Url}    chrome
    Maximize browser window
    Element Should Be Visible   ${a_ValidaConta}     

inserir dados
    Click Element               ${a_Name} 
    Input text                  ${Input_Email}     calinhostulioabreu@gmail.com
    click Element               ${id_Proximo}
    Set Browser Implicit Wait   5s   
    Input text                  ${Input_Senha}     xxxxxx
    click Element               ${Div_Logar}
    Set Browser Implicit Wait   5s 
Validar Conta conectada
    Element Should Be Visible   ${Div_Erro}
    Page Should Not Contain Image   ${Img_Logado}

fechar navegador
    Close browser