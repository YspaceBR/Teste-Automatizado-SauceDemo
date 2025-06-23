*** Settings ***
Documentation     Casos de teste para funcionalidades de produtos
Library           SeleniumLibrary
Resource    ../resources/produtos_keywords.robot



*** Test Cases ***
Validar lista de produtos após login
    Login válido no sistema
    Validar exibição da lista de produtos
    Fechar navegador

Visualizar detalhes de um produto
    Login válido no sistema
    Visualizar detalhes de um produto
    Fechar navegador

Ordenar produtos por nome e preço
    Login válido no sistema
    Ordenar produtos por nome
    Validar exibição da lista de produtos

    Ordenar produtos por preço
    Validar exibição da lista de produtos
    Fechar navegador



