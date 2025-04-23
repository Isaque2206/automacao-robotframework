*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/home_page.robot

*** Test Cases ***
Realizar compra completa :: Teste E2E para realizar uma compra com sucesso
    Abrir site
    Fazer login com usuário existente
    Acessar seção Women
    Selecionar produto "Blouse"
    Adicionar produto ao carrinho
    Finalizar compra
    Validar confirmação de pedido
    Tirar evidência da compra
    Fechar navegador

