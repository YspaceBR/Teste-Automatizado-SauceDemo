*** Settings ***
Documentation     Casos de teste para funcionalidades do checkout do carrinho
Library           SeleniumLibrary
Resource    ../resources/checkout_keywords.robot


*** Test Cases ***

 Processo de checkout completo
    Login e acessar lista de produtos
    Adicionar primeiro produto ao carrinho
    Acessar o carrinho
    Iniciar checkout
    Preencher dados de checkout
    Validar resumo da compra
    Finalizar compra
    Validar mensagem de sucesso
    Fechar navegador


