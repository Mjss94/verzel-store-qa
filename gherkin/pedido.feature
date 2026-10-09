# language: pt

Funcionalidade: Finalização de pedido
  Como cliente da Verzel Store
  Quero finalizar meu pedido
  Para concluir minha compra

  Cenário: Finalizar pedido com dados válidos
    Dado que possuo produtos no carrinho
    E informei um nome com nome e sobrenome
    E informei um e-mail válido
    E informei um CEP válido
    Quando confirmar o pedido
    Então o pedido deve ser criado com sucesso
    E deve ser gerado um número de pedido no formato "VZ-000000"

  Cenário: Finalizar pedido com e-mail inválido
    Dado que possuo produtos no carrinho
    E informei um nome válido
    E informei um e-mail inválido
    E informei um CEP válido
    Quando confirmar o pedido
    Então o pedido não deve ser criado
    E os dados do cliente devem ser considerados inválidos