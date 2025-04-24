*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Clicar em Sign In
    Click Element    xpath=//a[@class='login']

Preencher campo e-mail com inválido
    Input Text    id=email_create    isaqueantunes+hotmail.com

Clicar no botão Create an Account
    Wait Until Element Is Visible    id=SubmitCreate    timeout=5s
    Click Button    id=SubmitCreate

Validar mensagem de e-mail inválido
    Wait Until Element Is Visible    css=.alert.alert-danger    timeout=10s
    Element Text Should Be    css=.alert.alert-danger li    Invalid email address.

Preencher e-mail válido
    Input Text    id=email_create    wikoge3818@f5url.com
    
Limpar campo de e-mail na tela de cadastro
    Click Button  id=SubmitCreate
    Wait Until Element Is Visible    id=customer_firstname    10s
    Click Element                id=id_gender2
    Input Text     id=email  wikoge3818@f5url.com
    Clear Element Text    id=email

Clicar em Register
    Wait Until Element Is Visible    id=submitAccount    10s
    Click Button    id=submitAccount

Validar mensagens de campos obrigatórios
    Wait Until Element Is Visible    css=.alert.alert-danger    timeout=10s
    Element Should Contain    css=.alert.alert-danger    lastname is required.
    Element Should Contain    css=.alert.alert-danger    firstname is required.
    Element Should Contain    css=.alert.alert-danger    email is required.
    Element Should Contain    css=.alert.alert-danger    passwd is required.

