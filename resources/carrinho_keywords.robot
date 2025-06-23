*** Settings ***
Documentation    Keywords para testes de produtos na Saucedemo (Adição de carrinho, Remoção de produtos, e validação do carrinho)
Library    SeleniumLibrary


*** Variables ***
${URL}             https://www.saucedemo.com/v1
${USER_VALIDO}     standard_user
${SENHA_VALIDA}    secret_sauce



*** Keywords ***
Login e acessar lista de produtos
    Set Selenium Speed        0.5s
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Input Text    id:user-name    ${USER_VALIDO}
    Input Text    id:password     ${SENHA_VALIDA}
    Click Button  id:login-button
    Wait Until Page Contains Element    css:.inventory_list

Adicionar primeiro produto ao carrinho
    Click Button    xpath=(//button[contains(text(),'ADD TO CART')])[1]

Remover primeiro produto do carrinho
    Click Button    xpath=(//button[contains(text(),'REMOVE')])[1]
    
Acessar o carrinho
    Click Element    id:shopping_cart_container
Validar item no carrinho
    Element Should Be Visible    css:.cart_item

Validar carrinho vazio
    Element Should Not Be Visible    css:.cart_item

Fechar navegador
    Close Browser