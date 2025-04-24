*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.automationpractice.pl/index.php

*** Keywords ***
Abrir navegador
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Create WebDriver    Chrome    options=${options}
    Go To    ${URL}


Tirar evidência final
    Capture Page Screenshot    
Fechar navegador
    Close Browser
