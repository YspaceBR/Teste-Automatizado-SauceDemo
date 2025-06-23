*** Settings ***
Documentation    Keywords para testes de produtos na Saucedemo (login, visualização, validação e ordenação)
Library    SeleniumLibrary

*** Variables ***
${URL}             https://www.saucedemo.com/v1
${USER_VALIDO}     standard_user
${SENHA_VALIDA}    secret_sauce


*** Keywords ***
Login válido no sistema
    Set Selenium Speed        0.5s
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Input Text    id:user-name    ${USER_VALIDO}
    Input Text    id:password     ${SENHA_VALIDA}
    Click Button  id:login-button
    Wait Until Page Contains Element    css:.inventory_list

Validar exibição da lista de produtos
    Element Should Be Visible    css:.inventory_item

Visualizar detalhes de um produto
    Click Element    css:#inventory_container > div > div:nth-child(1) > div.inventory_item_img
    Element Should Be Visible    css:.inventory_details_name
    Element Should Be Visible    css:.inventory_details_price

Ordenar produtos por nome 
    Select From List By Value    class:product_sort_container    za
    Sleep    1

Ordenar produtos por preço
    Select From List By Value    class:product_sort_container    lohi
    Sleep    1

Fechar navegador
    Close Browser