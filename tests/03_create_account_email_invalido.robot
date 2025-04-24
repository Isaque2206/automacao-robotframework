*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Resource   ../resources/browser_keywords.robot
Resource   ../resources/account_keywords.robot

Suite Setup    Abrir navegador
Test Teardown     browser_keywords.Tirar evidência final

*** Test Cases ***
Validar mensagem para e-mail inválido
    [tags]    create_account_e-mail_invalido
    Validar mensagem de e-mail inválido    isaqueantunes+hotmail.com
