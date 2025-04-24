*** Settings ***
Library           SeleniumLibrary
Library    Screenshot
Resource          ../resources/account_keywords.robot
Resource   ../resources/browser_keywords.robot
Test Setup        browser_keywords.Abrir navegador
Test Teardown     browser_keywords.Tirar evidência final


*** Test Cases ***
Criar conta com sucesso
    [Tags]    create_account
    Acessar página de criação de conta
    Preencher dados do usuário
    Submeter formulário
    Verificar criação com sucesso
