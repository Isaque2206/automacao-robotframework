# Projeto de Automação com Robot Framework

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

## CI/CD com GitHub Actions

Os testes são executados automaticamente no GitHub Actions a cada push.