*** Settings ***
Library           SeleniumLibrary
Library           Screenshot

Resource          ../resources/login_keywords.robot
Resource   ../resources/browser_keywords.robot
Test Setup        browser_keywords.Abrir navegador
Test Teardown     browser_keywords.Tirar evidência final

*** Test Cases ***
Fazer login com sucesso
    Fazer login


