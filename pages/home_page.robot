*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Abrir site
    Open Browser    http://www.automationpractice.pl/index.php    chrome
    Maximize Browser Window

Fazer login com usuário existente
    Click Element    xpath=//a[@class='login']
    Input Text       id=email    teste@example.com
    Input Text       id=passwd   654321
    Click Button     id=SubmitLogin
    Wait Until Page Contains Element    xpath=//a[@class='logout']    10s

Acessar seção Women
    Click Element    xpath=//a[@title='Women' and contains(text(), 'Women')]
    Wait Until Page Contains Element    xpath=//a[@title='Blouse']    10s
    
Selecionar produto "Blouse"
    Scroll Element Into View       xpath=//a[@title='Blouse']
    Mouse Over                     xpath=//a[@title='Blouse']
    Sleep                          1s
    Wait Until Element Is Visible  xpath=//a[@title='Blouse']/ancestor::li//a[@title='Add to cart']    10s
    Click Element                  xpath=//a[@title='Blouse']/ancestor::li//a[@title='Add to cart']


Adicionar produto ao carrinho
    Scroll Element Into View    xpath=//button[@name='Submit']
    Sleep    1s
    Click Button               xpath=//button[@name='Submit']
    Wait Until Page Contains    Product successfully added    10s

Finalizar compra
    Click Element    xpath=//a[@title='Proceed to checkout']
    Click Element    xpath=//a[@class='button btn btn-default standard-checkout button-medium']
    Click Element    name=processAddress
    Click Element    id=cgv
    Click Element    name=processCarrier
    Click Element    class=bankwire
    Click Element    xpath=//button[@type='submit']

Validar confirmação de pedido
    Page Should Contain    Your order on My Store is complete.

Tirar evidência da compra
    Capture Page Screenshot    compra-finalizada.png

Fechar navegador
    Close Browser
