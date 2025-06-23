*** Settings ***
Documentation     Casos de teste para funcionalidades do carrinho
Library           SeleniumLibrary
Resource    ../resources/carrinho_keywords.robot


*** Test Cases ***

Adicionar produto ao carrinho
    Login e acessar lista de produtos
    Adicionar primeiro produto ao carrinho
    Acessar o carrinho
    Validar item no carrinho
    Fechar navegador

Remover produto do carrinho
    Login e acessar lista de produtos
    Adicionar primeiro produto ao carrinho
    Remover primeiro produto do carrinho
    Acessar o carrinho
    Validar carrinho vazio
    Fechar navegador


