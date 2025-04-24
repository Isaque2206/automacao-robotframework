*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    http://www.automationpractice.pl/index.php
${BROWSER}    chrome

*** Keywords ***
Abrir navegador
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Tirar evidência final
    [Arguments]    ${status}=None
    Capture Page Screenshot
Fechar navegador
    SeleniumLibrary.Close Browser

