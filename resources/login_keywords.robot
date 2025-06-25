*** Settings ***
Documentation    Keywords para testes de produtos na Saucedemo (login e logout)
Library    SeleniumLibrary


*** Variables ***
${URL}             https://www.saucedemo.com/v1
${USER_VALIDO}     standard_user
${SENHA_VALIDA}    secret_sauce
${USER_INVALIDO}   usuario_teste
${SENHA_INVALIDA}  senha_errada





*** Keywords ***
Abrir o navegador e acessar o site
    Set Selenium Speed        0.5s
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Wait Until Page Contains Element    id:login-button

Realizar login com usuário e senha
    [Arguments]    ${usuario}    ${senha}
    Input Text    id:user-name    ${usuario}
    Input Text    id:password     ${senha}
    Click Button  id:login-button

Validar login com sucesso
    Wait Until Page Contains Element    css:.inventory_list

Validar mensagem de erro
    Wait Until Page Contains Element    css:[data-test="error"]

Realizar logout
    Click Element    css:.bm-burger-button button
    Wait Until Element Is Visible    id:logout_sidebar_link    timeout=5s
    Click Element    id:logout_sidebar_link
    Wait Until Element Is Visible    id:login-button
