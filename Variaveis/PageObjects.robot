*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${site_Url}                 https://www.google.com/
${a_ValidaConta}            //*[@id="gb"]/div/div[2]/a
${a_Name}                   //a[@class="gb_1 gb_2 gb_7d gb_7c"]
${Input_Email}              //input[@id="identifierId"]
${id_Proximo}               //*[@id="identifierNext"]/div/button/span
${Input_Senha}              //*[@id="password"]/div[1]/div/div[1]/input
${Div_Logar}                //div[@id="passwordNext"]
${Img_Logado}               //*[@id="gb"]/div/div[2]/div[2]/div/a/img
${Div_Erro}                 //*[@id="view_container"]

${Input_Pesquisa}           //input[@type="text"][@title="Pesquisar"]
${Input_Search}             //html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
${Input_ValorPesquisa}      //input[@type="text"][@value][@class="gLFyf gsfi"]
${Div_PesqAvançada}         //html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[2]/ul[1]/div/ul/li[5]