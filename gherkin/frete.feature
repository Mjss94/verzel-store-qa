# language: pt

Funcionalidade: Regra de frete grátis
  Como cliente da Verzel Store
  Quero saber o valor do frete
  Para entender quando tenho direito ao frete grátis

  Cenário: Cobrar frete para subtotal abaixo de R$ 200,00
    Dado que possuo produtos no carrinho
    E o subtotal é de R$ 199,90
    Quando o carrinho for calculado
    Então o frete deve ser de R$ 19,90
    E o carrinho deve informar que faltam R$ 0,10 para o frete grátis

  Cenário: Conceder frete grátis para subtotal de R$ 200,00
    Dado que possuo produtos no carrinho
    E o subtotal é de R$ 200,00
    Quando o carrinho for calculado
    Então o frete deve ser de R$ 0,00
    E o carrinho deve informar que o frete é grátis
    E o valor faltante para frete grátis deve ser R$ 0,00

  Cenário: Conceder frete grátis para subtotal superior a R$ 200,00
    Dado que possuo produtos no carrinho
    E o subtotal é de R$ 239,70
    Quando o carrinho for calculado
    Então o frete deve ser de R$ 0,00
    E o valor faltante para frete grátis deve ser R$ 0,00

  Cenário: Considerar o subtotal antes do desconto para calcular o frete
    Dado que possuo produtos no carrinho
    E o subtotal é de R$ 210,00
    E possuo o cupom "BEMVINDO10" aplicado
    Quando o carrinho for calculado
    Então o desconto deve ser de R$ 21,00
    E o frete deve ser de R$ 0,00
    E o total deve ser de R$ 189,00