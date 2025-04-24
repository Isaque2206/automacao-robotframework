*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/account_keywords.robot  # garante que o email já está carregado no escopo da suite


*** Variables ***
${EMAIL}   teste@example.com
${SENHA}   654321

*** Keywords ***

Acessar página de login
    Click Element    xpath=//a[@class='login']

Fazer login
    Click Element    xpath=//a[@class='login']
    Input Text       id=email     ${EMAIL}
    Input Text       id=passwd    ${SENHA}
    Click Button     id=SubmitLogin
    Wait Until Page Contains Element    xpath=//a[@class='logout']    timeout=10s    

Preencher login com credenciais válidas
    [Arguments]    ${senha}=654321
    Input Text    id=email    ${email}
    Input Text    id=passwd   ${senha}
    Click Element    id=SubmitLogin

# Validar login com senha incorreta 
Validar login com senha inválida
    Click Element    css=a.login
    Input Text    id=email    qa@hotmail.com
    Input Text    id=passwd   x
    Click Button  id=SubmitLogin
    Wait Until Element Is Visible    css=.alert.alert-danger    timeout=10s
    Element Should Contain           css=.alert.alert-danger    Invalid password.

Verificar login com sucesso
    Wait Until Page Contains Element    xpath=//a[@class='logout']

Fechar navegador
    Close Browser
