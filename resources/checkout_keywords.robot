*** Settings ***
Documentation    Keywords para testes de produtos na Saucedemo (Inserção de dados, checkout e finalização de compras)
Library    SeleniumLibrary

*** Variables ***
${URL}             https://www.saucedemo.com/v1
${USER_VALIDO}     standard_user
${SENHA_VALIDA}    secret_sauce
${NOME}            Brunno
${SOBRENOME}       Boschini
${CEP}             71993-560


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

Acessar o carrinho
    Click Element    id:shopping_cart_container

Iniciar checkout
    Click Element    css:#cart_contents_container > div > div.cart_footer > a.btn_action.checkout_button

Preencher dados de checkout
    Input Text    id:first-name     ${NOME}
    Input Text    id:last-name      ${SOBRENOME}
    Input Text    id:postal-code    ${CEP}
    Click Element    css:input.btn_primary.cart_button

Validar resumo da compra
    Element Should Be Visible    css:.summary_info


Finalizar compra
    Click Element    css:a.btn_action.cart_button

Validar mensagem de sucesso
    Wait Until Page Contains Element    css:.complete-header
    Element Text Should Be    css:.complete-header    THANK YOU FOR YOUR ORDER

Fechar navegador
    Close Browser