*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/browser_keywords.robot
Resource    ../resources/login_keywords.robot

Test Teardown    browser_keywords.Tirar evidência final
# ...              browser_keywords.Fechar navegador

*** Test Cases ***
Validar mensagem ao logar com senha incorreta
    [Tags]    login_senha_incorreta
    browser_keywords.Abrir navegador
    Validar login com senha inválida 
