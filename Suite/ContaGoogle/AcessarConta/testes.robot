*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ScreenCapLibrary

##Automacao##
Resource    ../../../Automacao/AutomacaoContaLogin.robot
##Variaveis##
Resource    ../../../Variaveis/PageObjects.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Cenário 1 - Abrir e Validar Site
    Start Video Recording
    abrir site Automacao


Cenário 2 - Inserir dados Conta Google
    inserir dados

Cenário 3 - Validar Conta conectada
    Validar Conta conectada

Cenário 4 - Fechar Navegador
    fechar navegador
    Stop Video Recording