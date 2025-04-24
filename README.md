# Projeto de Automação com Robot Framework
![CI](https://github.com/Isaque2206/automacao-robotframework/actions/workflows/robot-ci.yml/badge.svg)

Este projeto realiza testes automatizados E2E (fim a fim) utilizando o Robot Framework.

## Estrutura do Projeto

- `pages/`: arquivos Page Object Model com os elementos das páginas.
- `resources/`: keywords reutilizáveis organizadas por contexto (login, cadastro, navegação, etc).
- `tests/`: cenários de teste organizados por função (compra, login, criação de conta).

## Requisitos

- Python 3.8+
- Google Chrome
- ChromeDriver compatível com sua versão do Chrome

## Instalação

```bash
pip install -r requirements.txt
```

## Execução dos testes

Executar todos os testes com:

```bash
robot -d logs tests/
```
## Casos de Teste Automatizados

- [x] Criação de conta com dados válidos
- [x] Validação de e-mail inválido
- [x] Validação de campos obrigatórios
- [x] Login com sucesso
- [x] Login com senha incorreta
- [x] Fluxo completo de compra


## CI/CD com GitHub Actions

Os testes são executados automaticamente no GitHub Actions a cada push.

<!-- Teste CI -->
