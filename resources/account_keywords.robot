*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String

*** Keywords ***
Acessar página de criação de conta
    Click Element    xpath=//a[@class='login']
    ${email}=    Safe Email
    Input Text   id=email_create    ${email}
    Click Element    id=SubmitCreate
    Wait Until Page Contains Element    id=customer_firstname    10s
    Set Suite Variable    ${email} 
Preencher dados do usuário
    Wait Until Element Is Visible    id=customer_firstname    10s
    Click Element                id=id_gender1
    Input Text                   id=customer_firstname    QA
    Input Text                   id=customer_lastname     Test
    Input Text                   id=passwd                123456
    Select From List By Value    id=days     1
    Select From List By Value    id=months   1
    Select From List By Value    id=years    2000
    Click Element                id=newsletter

Submeter formulário
    Wait Until Element Is Visible    id=submitAccount    10s
    Click Element    id=submitAccount

Verificar criação com sucesso
    Wait Until Page Contains Element    xpath=//a[@class='logout']    15s
    Wait Until Element Is Visible       css=.alert.alert-success      10s
    Element Text Should Be              css=.alert.alert-success      Your account has been created.

Tirar evidência final
    Capture Page Screenshot
Fechar navegador
    Close Browser
