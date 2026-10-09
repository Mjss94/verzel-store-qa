# Desafio QA — Verzel Store

## Objetivo

Realizar testes manuais, exploratórios, de API e automatizados na aplicação Verzel Store, identificando comportamentos esperados e defeitos encontrados durante a execução.

**Aplicação:** [Verzel Store](https://verzel-store.qa-test-verzel-store.workers.dev/)

**API:** `https://verzel-store.qa-test-verzel-store.workers.dev/api`

## Escopo dos testes

- Funcionalidades do carrinho de compras.
- Cálculo de subtotal, desconto, frete e total.
- Aplicação e validação de cupons.
- Validação de quantidade de produtos.
- Finalização de pedidos e validação de dados.
- Endpoints da API e tratamento de erros.
- Testes exploratórios e registro de defeitos.

## Ferramentas utilizadas

- Playwright Test — automação de testes.
- Git e GitHub — versionamento e publicação do projeto.
- Navegador e requisições HTTP — testes manuais e de API.

## Testes automatizados

Foram implementados três testes automatizados com Playwright:

| ID    | Cenário   | Resultado |
| CT033 | Consultar produto existente pela API | Aprovado |
| CT034 | Consultar produto inexistente pela API | Aprovado |
| CT035 | Calcular carrinho com produto válido pela API | Aprovado |

### Como executar

Pré-requisitos: Node.js e npm instalados.

Instale as dependências:

```bash
npm install
npx playwright install chromium
```

Execute os testes:

```bash
npm test
```

## Estrutura do projeto

- `docs/cenarios-de-teste.md` — cenários de teste.
- `docs/execucao-testes.md` — resultados dos testes manuais, exploratórios, de API e automatizados.
- `docs/bugs.md` — defeitos identificados durante os testes.
- `gherkin/` — cenários escritos em Gherkin.
- `evidencias/` — evidências coletadas durante a execução.
- `tests/api.spec.js` — testes automatizados da API.

## Observações

Os resultados documentados correspondem aos comportamentos observados durante a execução dos testes. Os defeitos identificados estão descritos no arquivo `docs/bugs.md`.

## Autoria

Projeto desenvolvido como entrega do desafio técnico de QA da Verzel.


## Uso de Inteligência Artificial

Utilizei o ChatGPT como ferramenta de apoio durante o desenvolvimento deste desafio, principalmente para:

- Apoiar a estruturação e organização dos cenários de teste.
- Auxiliar na elaboração dos cenários em Gherkin.
- Melhorar a clareza e a padronização dos registros de bugs e dos resultados de execução.
- Apoiar a criação dos testes automatizados com Playwright e a resolução de erros de configuração e execução.
- Orientar a organização da documentação e a publicação do projeto no GitHub.

A IA foi utilizada como apoio, enquanto a execução dos testes, a observação dos comportamentos da aplicação e a identificação e validação dos defeitos foram realizadas durante a prática do desafio.

**Ferramenta utilizada:** ChatGPT — https://chatgpt.com/