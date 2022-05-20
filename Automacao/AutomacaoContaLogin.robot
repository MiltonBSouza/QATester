*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ScreenCapLibrary

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
    Input text                  ${Input_Senha}     Aquiliz12!
    click Element               ${Div_Logar}
    Set Browser Implicit Wait   5s 
Validar Conta conectada
    Page Should Contain Image   ${Img_Logado}

fechar navegador
    Close browser
