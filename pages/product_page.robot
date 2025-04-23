*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Selecionar produto por título
    [Arguments]    ${produto}
    Click Element    xpath=//a[@title='${produto}']

Adicionar produto ao carrinho
    Scroll Element Into View    xpath=//button[@name='Submit']
    Click Button                xpath=//button[@name='Submit']
    Wait Until Page Contains    Product successfully added    10s
