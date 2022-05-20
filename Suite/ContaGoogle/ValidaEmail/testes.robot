*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ScreenCapLibrary

##Automacao##
Resource    ../../../Automacao/AutomacaoEmailErro.robot
##Variaveis##
Resource    ../../../Variaveis/PageObjects.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Cenário 1 - Abrir site Automacao
    Start Video Recording
    abrir site Automacao

Cenário 2 - Inserir dados
    inserir dados

Cenário 3 - Validar Erro Email
    Validar Erro Email

Cenário 4 - Fechar Navegador
    fechar navegador
    Stop Video Recording