*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
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
