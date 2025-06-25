*** Settings ***
Documentation     Casos de teste para login e logout
Library           SeleniumLibrary
Resource    ../resources/login_keywords.robot

*** Test Cases ***

Login com credenciais válidas
    Abrir o navegador e acessar o site
    Realizar login com usuário e senha    ${USER_VALIDO}    ${SENHA_VALIDA}
    Validar login com sucesso
    Close Browser

Login com credenciais inválidas
    Abrir o navegador e acessar o site
    Realizar login com usuário e senha    ${USER_INVALIDO}    ${SENHA_INVALIDA}
    Validar mensagem de erro
    Close Browser

Logout após login bem-sucedido
    Abrir o navegador e acessar o site
    Realizar login com usuário e senha    ${USER_VALIDO}    ${SENHA_VALIDA}
    Validar login com sucesso
    Realizar logout
    Close Browser



