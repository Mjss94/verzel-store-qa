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