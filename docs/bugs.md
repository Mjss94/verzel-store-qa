## BUG001 — Frete cobrado no subtotal de R$ 200,00

- **Cenários relacionados:** CT016 e CT021
- **Severidade sugerida:** Média
- **Pré-condição:** Carrinho com subtotal de R$ 200,00.
- **Passos para reproduzir:**
  1. Adicionar 2 unidades da Mochila Urbana 20L.
  2. Verificar os valores do carrinho.
- **Resultado esperado:** Frete grátis e total de R$ 200,00.
- **Resultado encontrado:** Frete de R$ 19,90 e total de R$ 219,90, apesar de a mensagem indicar que faltam R$ 0,00 para o frete grátis.
- **Status:** Reproduzido na interface; validar posteriormente via API.
- **Observação:** O problema também ocorreu com o cupom BEMVINDO10 aplicado. O subtotal continuou em R$ 200,00, mas o sistema cobrou R$ 19,90 de frete.

## BUG002 — Validação incorreta do nome completo

- **Cenário relacionado:** CT025/CT026 — validação do nome completo
- **Severidade:** Média
- **Resultado esperado:** Aceitar o nome quando nome e sobrenome estiverem preenchidos.
- **Resultado encontrado:** O sistema continua solicitando nome e sobrenome mesmo após informar `Maria Silva`.
- **Evidência:** evidencias/BUG002.png
- **Status:** Reproduzido na interface; investigar a causa.

## BUG003 — API aceita quantidade acima do limite

- **Cenário relacionado:** CT040
- **Severidade:** Alta
- **Resultado esperado:** Rejeitar quantidades superiores a 5 unidades por produto.
- **Resultado encontrado:** A API aceitou 6 unidades e calculou o valor do carrinho.
- **Evidência:** Resposta da API registrada durante o CT040.
- **Status:** Reproduzido via API.