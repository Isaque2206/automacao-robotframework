*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.automationpractice.pl/index.php
${BROWSER}    chrome

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Tirar evidência final
    Capture Page Screenshot    
Fechar navegador
    Close Browser
