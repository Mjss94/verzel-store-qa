# Cenários de Teste — Verzel Store

## 1. Objetivo

Validar as funcionalidades da Verzel Store relacionadas ao carrinho,
cupons de desconto, cálculo de frete e finalização de pedidos,
considerando os critérios de aceite e regras de negócio fornecidos
na documentação do desafio.

## 2. Escopo

Os testes contemplam:

- Carrinho de compras
- Cálculo de subtotal e total
- Cupons de desconto
- Regra de frete grátis
- Limite de quantidade por produto
- Dados do cliente
- Finalização de pedidos
- API
- Testes negativos
- Testes de limite
- Testes exploratórios

## 3. Ambiente

- Aplicação: Verzel Store
- URL: https://verzel-store.qa-test-verzel-store.workers.dev/
- API: https://verzel-store.qa-test-verzel-store.workers.dev/api
- Autenticação: Não necessária
- Tipo de acesso: Público

## 4. Cenários de Teste

| ID | Cenário | Tipo | Prioridade | Execução |
|---|---|---|---|---|
| CT001 | Adicionar um produto ao carrinho | Positivo | Alta | UI |
| CT002 | Adicionar múltiplas unidades de um produto | Positivo | Alta | UI |
| CT003 | Adicionar múltiplos produtos ao carrinho | Positivo | Alta | UI |
| CT004 | Calcular subtotal de um produto | Regra de negócio | Alta | UI/API |
| CT005 | Calcular subtotal de múltiplos produtos | Regra de negócio | Alta | UI/API |
| CT006 | Calcular total sem cupom | Regra de negócio | Alta | UI/API |
| CT007 | Aplicar cupom BEMVINDO10 | Positivo | Alta | UI/API |
| CT008 | Validar desconto de 10% sobre o subtotal | Regra de negócio | Alta | UI/API |
| CT009 | Aplicar cupom em letras minúsculas | Positivo | Média | UI/API |
| CT010 | Aplicar cupom com espaços no início e no fim | Positivo | Média | UI/API |
| CT011 | Aplicar cupom inexistente | Negativo | Alta | UI/API |
| CT012 | Aplicar cupom expirado | Negativo | Alta | UI/API |
| CT013 | Remover cupom aplicado | Positivo | Média | UI |
| CT014 | Aplicar segundo cupom sem remover o atual | Negativo | Média | UI |
| CT015 | Compra abaixo de R$ 200,00 | Positivo | Alta | UI/API |
| CT016 | Compra exatamente de R$ 200,00 | Limite | Alta | UI/API |
| CT017 | Compra acima de R$ 200,00 | Positivo | Alta | UI/API |
| CT018 | Validar frete fixo de R$ 19,90 | Regra de negócio | Alta | UI/API |
| CT019 | Validar frete grátis a partir de R$ 200,00 | Regra de negócio | Alta | UI/API |
| CT020 | Validar valor faltante para frete grátis | Regra de negócio | Alta | UI/API |
| CT021 | Validar frete considerando subtotal antes do desconto | Regra de negócio | Alta | UI/API |
| CT022 | Validar que o desconto não incide sobre o frete | Regra de negócio | Alta | UI/API |
| CT023 | Adicionar exatamente 5 unidades de um produto | Limite | Alta | UI/API |
| CT024 | Adicionar mais de 5 unidades de um produto | Negativo | Alta | UI/API |
| CT025 | Finalizar pedido com dados válidos | Positivo | Alta | UI/API |
| CT026 | Informar nome sem sobrenome | Negativo | Média | UI/API |
| CT027 | Informar e-mail inválido | Negativo | Média | UI/API |
| CT028 | Informar CEP com 8 dígitos sem hífen | Positivo | Média | UI/API |
| CT029 | Informar CEP com 8 dígitos e hífen | Positivo | Média | UI/API |
| CT030 | Finalizar pedido com cupom válido | Positivo | Alta | UI/API |
| CT031 | Finalizar pedido com cupom inexistente | Negativo | Alta | API |
| CT032 | Finalizar pedido com cupom expirado | Negativo | Alta | API |
| CT033 | Consultar produto existente pela API | Positivo | Alta | API |
| CT034 | Consultar produto inexistente pela API | Negativo | Alta | API |
| CT035 | Calcular carrinho válido pela API | Positivo | Alta | API |
| CT036 | Calcular carrinho sem itens pela API | Negativo | Alta | API |
| CT037 | Informar produto inexistente na API | Negativo | Alta | API |
| CT038 | Informar produto duplicado na API | Negativo | Alta | API |
| CT039 | Informar quantidade inválida na API | Negativo | Alta | API |
| CT040 | Informar quantidade superior a 5 na API | Negativo | Alta | API |
| CT041 | Validar criação de pedido pela API | Positivo | Alta | API |
| CT042 | Validar método HTTP não permitido | Negativo | Média | API |
| CT043 | Validar rota inexistente | Negativo | Média | API |
| CT044 | Validar JSON inválido | Negativo | Média | API |

## 5. Testes Exploratórios

Durante a execução serão realizadas verificações exploratórias
para identificar comportamentos não previstos explicitamente na
documentação, considerando principalmente:

- Alteração rápida de quantidade;
- Aplicação e remoção repetida de cupons;
- Uso de espaços e caracteres inesperados;
- Atualização da página com itens no carrinho;
- Combinação de diferentes produtos e quantidades;
- Valores próximos aos limites de frete grátis;
- Comportamento da interface diante de entradas inválidas;
- Consistência entre os valores apresentados na interface e na API.

## 6. Observações

Os cenários serão executados manualmente antes da seleção dos casos
que serão automatizados com Playwright.

Os resultados, evidências e eventuais defeitos encontrados serão
registrados nos documentos correspondentes do projeto.