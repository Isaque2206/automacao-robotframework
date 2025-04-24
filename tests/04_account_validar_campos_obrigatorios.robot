*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Resource   ../resources/browser_keywords.robot
Resource   ../resources/email_validation_keywords.robot

*** Test Cases ***
Validar campos obrigatórios na criação de conta
    [Tags]    validar_campos_obrigatorios
    Abrir navegador
    Clicar em Sign In
    Preencher e-mail válido
    Clicar no botão Create an Account
    Limpar campo de e-mail na tela de cadastro
    Clicar em Register
    Validar mensagens de campos obrigatórios
    Tirar evidência final
    Fechar navegador
