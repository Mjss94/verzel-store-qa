## CT001 — Adicionar produto ao carrinho

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Quantidade:** 1
- **Preço unitário:** R$ 59,90
- **Subtotal:** R$ 59,90
- **Desconto:** R$ 0,00
- **Frete:** R$ 19,90
- **Total da compra:** R$ 79,80
- **Mensagem de frete grátis:** "Faltam R$ 140,10 para o frete grátis."

### Resultado esperado
O produto deve ser adicionado ao carrinho com a quantidade e os valores corretos. Para compras com subtotal inferior a R$ 200,00, deve ser aplicado o frete de R$ 19,90, e a loja deve informar corretamente quanto falta para atingir o valor mínimo para frete grátis.

### Resultado encontrado
O produto foi adicionado corretamente. A quantidade, o preço, o subtotal, o desconto, o frete, o total da compra e a mensagem de frete grátis foram exibidos conforme esperado.

### Evidência
- Arquivo: `evidencias/CT001.png`


## CT002 — Adicionar múltiplas unidades do mesmo produto

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Quantidade:** 2
- **Preço unitário:** R$ 59,90
- **Subtotal:** R$ 119,80
- **Desconto:** R$ 0,00
- **Frete:** R$ 19,90
- **Total da compra:** R$ 139,70
- **Mensagem de frete grátis:** "Faltam R$ 80,20 para o frete grátis."

### Resultado esperado
Ao adicionar duas unidades do mesmo produto, a quantidade e os valores do carrinho devem ser atualizados corretamente.

### Resultado encontrado
A quantidade foi atualizada para 2, e o subtotal, o desconto, o frete, o total da compra e a mensagem de frete grátis foram exibidos conforme esperado.

### Evidência
- Arquivo: `evidencias/CT002.png`

## CT003 — Adicionar produtos diferentes ao carrinho

- **Resultado:** Aprovado (PASS)
- **Produtos:**
  - Camiseta Essencial: 2 × R$ 59,90 = R$ 119,80
  - Calça Jeans Slim: 1 × R$ 139,90 = R$ 139,90
  - Boné Aba Curva: 1 × R$ 49,90 = R$ 49,90
- **Subtotal:** R$ 309,60
- **Desconto:** R$ 0,00
- **Frete:** R$ 0,00
- **Total da compra:** R$ 309,60

### Resultado esperado
A loja deve calcular corretamente o subtotal dos diferentes produtos e aplicar frete grátis quando o subtotal atingir R$ 200,00 ou mais.

### Resultado encontrado
Os valores foram calculados corretamente e o frete grátis foi aplicado conforme esperado.

### Evidência
- Arquivo: `evidencias/CT003.png`

## CT007 — Aplicar cupom válido

- **Resultado:** Aprovado (PASS)
- **Cupom:** BEMVINDO10
- **Subtotal:** R$ 309,60
- **Desconto aplicado:** R$ 30,96
- **Frete:** R$ 0,00
- **Total da compra:** R$ 278,64

### Resultado esperado
O cupom BEMVINDO10 deve aplicar 10% de desconto sobre o subtotal dos produtos, sem aplicar desconto sobre o frete.

### Resultado encontrado
O cupom foi aplicado corretamente. O desconto de R$ 30,96 foi calculado sobre o subtotal de R$ 309,60, e o total da compra ficou em R$ 278,64.

### Evidência
- Arquivo: evidencias/CT007.png

## CT009 — Aplicar cupom em letras minúsculas

- **Resultado:** Aprovado (PASS)
- **Cupom utilizado:** bemvindo10
- **Subtotal:** R$ 309,60
- **Desconto esperado e encontrado:** R$ 30,96
- **Frete:** R$ 0,00
- **Total da compra:** R$ 278,64

### Resultado esperado
O sistema deve aceitar o cupom independentemente do uso de letras maiúsculas ou minúsculas.

### Resultado encontrado
O cupom foi aceito em letras minúsculas e o desconto foi aplicado corretamente.

### Evidência
- Arquivo: evidencias/CT009.png 

## CT010 — Aplicar cupom com espaços antes e depois

- **Resultado:** Aprovado (PASS)
- **Cupom utilizado:** "  BEMVINDO10  "
- **Subtotal:** R$ 309,60
- **Desconto:** R$ 30,96
- **Frete:** R$ 0,00
- **Total da compra:** R$ 278,64

### Resultado esperado
O sistema deve ignorar espaços em branco antes e depois do código do cupom e aplicá-lo corretamente.

### Resultado encontrado
O cupom foi aceito mesmo com espaços antes e depois do código, e o desconto foi calculado corretamente.

### Evidência
- Arquivo: evidencias/CT010.png 

## CT011 — Aplicar cupom inexistente

- **Resultado:** Aprovado (PASS)
- **Cupom utilizado:** CUPOM123
- **Mensagem exibida:** "Cupom inválido."
- **Desconto aplicado:** R$ 0,00

### Resultado esperado
Ao informar um cupom inexistente, o sistema deve exibir a mensagem "Cupom inválido." e não aplicar nenhum desconto.

### Resultado encontrado
A mensagem "Cupom inválido." foi exibida e o cupom não foi aplicado.

### Evidência
- Arquivo: evidencias/CT011.png 

## CT012 — Aplicar cupom expirado

- **Resultado:** Aprovado (PASS)
- **Cupom utilizado:** VERAO2026
- **Mensagem exibida:** "Cupom expirado."
- **Desconto aplicado:** R$ 0,00

### Resultado esperado
Ao informar um cupom expirado, o sistema deve exibir a mensagem "Cupom expirado." e não aplicar nenhum desconto.

### Resultado encontrado
A mensagem "Cupom expirado." foi exibida e nenhum desconto foi aplicado.

### Evidência
- Arquivo: evidencias/CT012.png 

## CT013 — Remover cupom aplicado

- **Resultado:** Aprovado (PASS)
- **Cupom utilizado:** BEMVINDO10
- **Desconto antes da remoção:** R$ 30,96
- **Desconto após a remoção:** R$ 0,00
- **Total após a remoção:** R$ 309,60

### Resultado esperado
Ao remover o cupom aplicado, o desconto deve ser zerado e o total da compra deve ser recalculado corretamente.

### Resultado encontrado
O cupom foi removido com sucesso, o desconto voltou para R$ 0,00 e o total foi atualizado para R$ 309,60.

### Evidência
- Arquivo: evidencias/CT013.png 

## CT014 — Impedir aplicação de outro cupom sem remoção

- **Resultado:** Aprovado (PASS)
- **Cupom atual:** BEMVINDO10

### Resultado esperado
O sistema deve permitir apenas um cupom por vez, exigindo a remoção do cupom atual antes da aplicação de outro.

### Resultado encontrado
A loja não permite aplicar outro cupom enquanto o cupom atual está aplicado, respeitando a regra definida.

### Evidência
- Arquivo: evidencias/CT014.png  

## CT015 — Compra abaixo de R$ 200,00

- **Resultado:** Aprovado (PASS)
- **Subtotal:** R$ 59,90
- **Desconto:** R$ 0,00
- **Frete:** R$ 19,90
- **Total da compra:** R$ 79,80
- **Mensagem:** "Faltam R$ 140,10 para o frete grátis."

### Resultado esperado
Para compras com subtotal inferior a R$ 200,00, o sistema deve cobrar frete de R$ 19,90 e informar quanto falta para atingir o valor mínimo para frete grátis.

### Resultado encontrado
O frete de R$ 19,90 foi aplicado, o total foi calculado corretamente e a mensagem informou o valor restante correto.

### Evidência
- Arquivo: evidencias/CT015.png 

## CT016 — Subtotal exatamente R$ 200,00

- **Resultado:** Reprovado (FAIL)
- **Produto:** Mochila Urbana 20L
- **Quantidade:** 2
- **Subtotal:** R$ 200,00
- **Desconto:** R$ 0,00
- **Frete esperado:** R$ 0,00
- **Frete encontrado:** R$ 19,90
- **Total esperado:** R$ 200,00
- **Total encontrado:** R$ 219,90
- **Mensagem exibida:** "Faltam 0,00 para o frete grátis."

### Resultado esperado
Ao atingir subtotal de R$ 200,00, o sistema deve conceder frete grátis e apresentar total de R$ 200,00.

### Resultado encontrado
O sistema cobrou R$ 19,90 de frete, totalizando R$ 219,90, mesmo com subtotal de R$ 200,00 e mensagem indicando que faltam R$ 0,00.

### Evidência
- Arquivo: evidencias/CT016.png

## CT017 — Subtotal acima de R$ 200,00

- **Resultado:** Aprovado (PASS)
- **Produtos:** 2 Mochilas Urbanas 20L e 1 Camiseta Essencial
- **Subtotal:** R$ 259,90
- **Desconto:** R$ 0,00
- **Frete:** R$ 0,00
- **Total da compra:** R$ 259,90

### Resultado esperado
Para compras com subtotal superior a R$ 200,00, o sistema deve conceder frete grátis.

### Resultado encontrado
O frete grátis foi aplicado corretamente e o total da compra correspondeu ao subtotal.

### Evidência
- Arquivo: evidencias/CT017.png

## CT021 — Frete grátis calculado antes do desconto

- **Resultado:** Reprovado (FAIL)
- **Produto:** Mochila Urbana 20L
- **Quantidade:** 2
- **Subtotal:** R$ 200,00
- **Cupom:** BEMVINDO10
- **Desconto esperado:** R$ 20,00
- **Frete esperado:** R$ 0,00
- **Frete encontrado:** R$ 19,90
- **Total esperado:** R$ 180,00
- **Total encontrado:** R$ 199,90
- **Mensagem exibida:** "Faltam 0,00 para o frete grátis."

### Resultado esperado
O sistema deve calcular a elegibilidade para frete grátis com base no subtotal antes do desconto. Como o subtotal é R$ 200,00, o frete deve ser grátis mesmo após a aplicação do cupom.

### Resultado encontrado
O sistema cobrou R$ 19,90 de frete após aplicar o cupom, apesar de o subtotal antes do desconto ser R$ 200,00 e a mensagem indicar que faltam R$ 0,00.

### Evidência
- Arquivo: evidencias/CT021.png 

## CT022 — Desconto não aplicado ao frete

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Subtotal:** R$ 59,90
- **Cupom:** BEMVINDO10
- **Desconto:** R$ 5,99
- **Frete:** R$ 19,90
- **Total da compra:** R$ 73,81

### Resultado esperado
O desconto do cupom deve ser calculado somente sobre o subtotal dos produtos, sem reduzir o valor do frete.

### Resultado encontrado
O desconto de R$ 5,99 foi aplicado corretamente sobre o produto, e o frete permaneceu em R$ 19,90. O total foi calculado corretamente.

### Evidência
- Arquivo: evidencias/CT022.png 

## CT023 — Permitir até 5 unidades do mesmo produto

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Quantidade:** 5
- **Subtotal:** R$ 299,50
- **Desconto:** R$ 0,00
- **Frete:** R$ 0,00
- **Total da compra:** R$ 299,50

### Resultado esperado
O sistema deve permitir a inclusão de até 5 unidades do mesmo produto e calcular corretamente o subtotal e o frete grátis para compras acima de R$ 200,00.

### Resultado encontrado
A loja permitiu 5 unidades da Camiseta Essencial, calculou o subtotal e o total em R$ 299,50 e aplicou frete grátis.

### Evidência
- Arquivo: evidencias/CT023.png

## CT024 — Bloquear mais de 5 unidades do mesmo produto

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Quantidade máxima:** 5 unidades

### Resultado esperado
O sistema deve impedir a adição de mais de 5 unidades do mesmo produto por pedido.

### Resultado encontrado
Ao atingir 5 unidades, a opção de adicionar mais itens ficou bloqueada, impedindo o aumento da quantidade para 6.

### Evidência
- Arquivo: evidencias/CT024.png

## CT025 — Finalizar uma compra válida

- **Resultado:** Aprovado (PASS)
- **Produto:** Camiseta Essencial
- **Quantidade:** 5
- **Subtotal:** R$ 299,50
- **Desconto:** R$ 0,00
- **Frete:** Grátis (R$ 0,00)
- **Total da compra:** R$ 299,50
- **Resultado da finalização:** Pedido confirmado

### Resultado esperado
Ao preencher corretamente os dados obrigatórios e finalizar a compra, o sistema deve confirmar o pedido e apresentar os itens e valores calculados corretamente.

### Resultado encontrado
O pedido foi confirmado. A tela apresentou 5 unidades da Camiseta Essencial, subtotal de R$ 299,50, desconto de R$ 0,00, frete grátis e total de R$ 299,50.

### Evidência
- Arquivo: evidencias/CT025.png

## CT026 — Validar nome sem sobrenome

- **Resultado:** Aprovado (PASS)
- **Dado informado:** Apenas o primeiro nome
- **Resultado da finalização:** Bloqueada

### Resultado esperado
O sistema deve impedir a finalização do pedido quando o cliente informar apenas o primeiro nome e solicitar o preenchimento do nome completo.

### Resultado encontrado
O sistema bloqueou a finalização e solicitou o preenchimento do nome e sobrenome.

### Evidência
- Arquivo: evidencias/CT026.png

## Validação do nome completo — Teste exploratório

- **Resultado:** Reprovado (FAIL)
- **Dado informado:** Maria Silva
- **Resultado esperado:** O sistema deve aceitar o nome e sobrenome preenchidos corretamente.
- **Resultado encontrado:** Mesmo com nome e sobrenome preenchidos, o sistema continua exibindo a mensagem solicitando nome e sobrenome.
- **Evidência:** evidencias/BUG002.png

## CT027 — Validar e-mail inválido

- **Resultado:** Aprovado (PASS)
- **E-mail informado:** maria@
- **Resultado da finalização:** Bloqueada

### Resultado esperado
O sistema deve impedir a finalização do pedido quando o e-mail informado for inválido e exibir uma mensagem de validação.

### Resultado encontrado
O sistema bloqueou a finalização e exibiu a mensagem solicitando um e-mail válido.

### Evidência
- Arquivo: evidencias/CT027.png

## CT028 — Validar CEP sem hífen

- **Resultado:** Aprovado (PASS)
- **CEP informado:** 12345678
- **Resultado da finalização:** Pedido confirmado

### Resultado esperado
O sistema deve aceitar um CEP com oito dígitos, sem hífen, quando os demais dados obrigatórios forem válidos.

### Resultado encontrado
A compra foi finalizada com sucesso e o pedido foi confirmado utilizando o CEP sem hífen.

### Evidência
- Arquivo: evidencias/CT028.png

## CT029 — Validar CEP com hífen

- **Resultado:** Aprovado (PASS)
- **CEP informado:** 12345-678
- **Resultado da finalização:** Pedido confirmado

### Resultado esperado
O sistema deve aceitar um CEP com oito dígitos no formato XXXXX-XXX quando os demais dados obrigatórios forem válidos.

### Resultado encontrado
A compra foi finalizada com sucesso e o pedido foi confirmado utilizando o CEP com hífen.

### Evidência
- Arquivo: evidencias/CT029.png

## CT030 — Finalizar pedido com cupom válido

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** Pedido confirmado com desconto de R$ 5,99 e total de R$ 73,81.
- **Evidência:** evidencias/CT030.png

## CT031 — Finalizar pedido com cupom inexistente

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** O sistema exibiu “Cupom inválido.” e ignorou o cupom, sem aplicar desconto.
- **Evidência:** evidencias/CT031.png

## CT032 — Finalizar pedido com cupom expirado

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** O sistema exibiu a mensagem de cupom expirado e ignorou o cupom, sem aplicar desconto.
- **Evidência:** evidencias/CT032.png

## CT033 — Consultar produto existente na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou HTTP 200 e os dados do produto P001, Camiseta Essencial, com preço de R$ 59,90.

## CT034 — Consultar produto inexistente na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou produto não encontrado para o código P999.

## CT035 — Calcular carrinho válido na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou subtotal de R$ 59,90, desconto de R$ 0,00, frete de R$ 19,90 e total de R$ 79,80.

## CT036 — Calcular carrinho sem itens na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou o erro ITENS_OBRIGATORIOS, informando que é necessário adicionar ao menos um item.

## CT037 — Produto inexistente no carrinho via API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou PRODUTO_NAO_ENCONTRADO para o produto P999.

## CT038 — Validar produto duplicado na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou ITEM_DUPLICADO ao identificar o produto P001 repetido no carrinho.

## CT039 — Validar quantidade inválida na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou QUANTIDADE_INVALIDA para a quantidade 0.

## CT040 — Validar quantidade acima do limite na API

- **Resultado:** Reprovado (FAIL)
- **Resultado encontrado:** A API aceitou 6 unidades do produto P001 e calculou o subtotal de R$ 359,40, sem bloquear a quantidade excedente.
- **Resultado esperado:** A API deve rejeitar quantidades superiores a 5 unidades, retornando QUANTIDADE_MAXIMA_EXCEDIDA.

## CT041 — Criar pedido válido pela API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou HTTP 201 Created e criou o pedido VZ-140446, com subtotal de R$ 59,90, frete de R$ 19,90 e total de R$ 79,80.

## CT042 — Validar método HTTP não permitido

- **Resultado:** Aprovado (PASS), se o status for HTTP 405
- **Resultado encontrado:** A API retornou METODO_NAO_PERMITIDO ao utilizar DELETE na rota de produtos.

## CT043 — Validar rota inexistente

- **Resultado:** Aprovado (PASS), se HTTP 404
- **Resultado encontrado:** A API retornou ROTA_NAO_ENCONTRADA com a mensagem “Rota não encontrada.”

## CT044 — Validar JSON inválido na API

- **Resultado:** Aprovado (PASS)
- **Resultado encontrado:** A API retornou JSON_INVALIDO ao receber um corpo de requisição inválido.

## Testes automatizados com Playwright

**Resultado:** 3 testes aprovados.

- **CT033:** consulta de produto existente pela API — PASSOU.
- **CT034:** consulta de produto inexistente pela API — PASSOU.
- **CT035:** cálculo do carrinho com produto válido pela API — PASSOU.

**Ferramenta:** Playwright Test  
**Arquivo:** `tests/api.spec.js`  
**Execução:** `npm test`