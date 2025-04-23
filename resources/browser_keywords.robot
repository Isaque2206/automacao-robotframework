*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.automationpractice.pl/index.php
${BROWSER}    chrome

*** Keywords ***
Abrir navegador
   Create WebDriver    Chrome    options=add_argument("--headless=new")    options=add_argument("--no-sandbox")    options=add_argument("--disable-dev-shm-usage")
   Go To    ${URL}
   Maximize Browser Window

Tirar evidência final
    Capture Page Screenshot    
Fechar navegador
    Close Browser
