*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.automationpractice.pl/index.php

*** Keywords ***
Abrir navegador
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Call Method    ${options}    add_argument    --disable-extensions
    Call Method    ${options}    add_argument    --remote-debugging-port=9222

    Open Browser    http://www.automationpractice.pl/index.php    browser=chrome    options=${options}
    Maximize Browser Window


Tirar evidência final
    Capture Page Screenshot    
Fechar navegador
    Close Browser
