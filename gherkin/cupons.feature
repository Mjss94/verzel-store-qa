# language: pt

Funcionalidade: Aplicação de cupons de desconto
  Como cliente da Verzel Store
  Quero aplicar cupons de desconto no carrinho
  Para reduzir o valor da minha compra

  Cenário: Aplicar cupom válido
    Dado que possuo produtos no carrinho
    E o subtotal do carrinho é de R$ 100,00
    Quando informar o cupom "BEMVINDO10"
    E aplicar o cupom
    Então o cupom deve ser aplicado com sucesso
    E o desconto deve ser de R$ 10,00
    E o total deve considerar o desconto de 10% sobre o subtotal

  Cenário: Aplicar cupom sem diferenciar maiúsculas e minúsculas
    Dado que possuo produtos no carrinho
    E o subtotal do carrinho é de R$ 100,00
    Quando informar o cupom "bemvindo10"
    E aplicar o cupom
    Então o cupom deve ser aplicado com sucesso
    E o desconto deve ser de R$ 10,00

  Cenário: Aplicar cupom com espaços no início e no fim
    Dado que possuo produtos no carrinho
    E o subtotal do carrinho é de R$ 100,00
    Quando informar o cupom " BEMVINDO10 "
    E aplicar o cupom
    Então o cupom deve ser aplicado com sucesso
    E o desconto deve ser de R$ 10,00

  Cenário: Informar cupom inexistente
    Dado que possuo produtos no carrinho
    Quando informar o cupom "CUPOMINVALIDO"
    E aplicar o cupom
    Então o desconto não deve ser aplicado
    E a mensagem "Cupom inválido." deve ser apresentada

  Cenário: Informar cupom expirado
    Dado que possuo produtos no carrinho
    Quando informar o cupom "VERAO2026"
    E aplicar o cupom
    Então o desconto não deve ser aplicado
    E a mensagem "Cupom expirado." deve ser apresentada