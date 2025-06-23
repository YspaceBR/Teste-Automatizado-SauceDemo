# Projeto de Automação - SauceDemo

## 📋 Descrição

Este projeto contém a automação de testes para o site [SauceDemo](https://www.saucedemo.com/v1), cobrindo as funcionalidades de login, produtos, carrinho e checkout.

Os testes são escritos utilizando Robot Framework e organizados em scripts específicos para cada funcionalidade. Além disso, os casos de teste estão documentados no formato BDD para facilitar a comunicação e entendimento.

---

## 📂 Estrutura do Projeto

```
automacao/
├── bdd/
│   └── casos_de_teste.txt         # Casos de teste escritos em BDD (Gherkin)
├── resources/
│   ├── login_keywords.robot            # Keywords reutilizáveis para login
│   ├── produtos_keywords.robot         # Keywords para produtos
│   ├── carrinho_keywords.robot         # Keywords para carrinho
│   └── checkout_keywords.robot         # Keywords para checkout
├── tests/
│   ├── login_tests.robot                # Testes de login
│   ├── produtos_tests.robot             # Testes de funcionalidades de produtos
│   ├── carrinho_tests.robot             # Testes do carrinho
│   └── checkout_tests.robot             # Testes de checkout
├── README.md                           # Documentação do projeto
├── log.html                            # Relatório detalhado após execução dos testes
├── report.html                         # Relatório resumido após execução dos testes
└── output.xml                          # Resultado da execução dos testes
```

---

## 🚀 Como executar os testes

1. Instale o Python 3.10+ (ou versão compatível)

2. Instale as dependências necessárias:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

3. Execute todos os testes:

```bash
robot tests/carrinho_tests.robot
robot tests/checkout_tests.robot
robot tests/login_tests.robot
robot tests/produtos_tests.robot
```

4. Após a execução, abra os relatórios gerados:

- `log.html` — relatório detalhado, com passos e screenshots (se houver)
- `report.html` — resumo da execução

---

## 🧪 Cobertura dos testes

- **Login**  
  - Login com credenciais válidas  
  - Login com credenciais inválidas  
  - Logout após login

- **Produtos**  
  - Visualização da lista de produtos  
  - Visualização dos detalhes de um produto  
  - Ordenação por nome e preço

- **Carrinho**  
  - Adicionar produto ao carrinho  
  - Remover produto do carrinho

- **Checkout**  
  - Processo completo de checkout com dados válidos  
  - Validação do resumo da compra e mensagem de sucesso