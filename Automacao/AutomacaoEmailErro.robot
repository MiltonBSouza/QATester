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
    Input text                  ${Input_Email}     zzzzz@.com
    click Element               ${id_Proximo}
    Set Browser Implicit Wait   5s 

Validar Erro Email
    Element Should Be Visible   ${Div_Erro}
    Page Should Not Contain Image   ${Img_Logado}

fechar navegador
    Close browser