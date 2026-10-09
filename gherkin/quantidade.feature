# language: pt

Funcionalidade: Limite de quantidade por produto
  Como cliente da Verzel Store
  Quero adicionar produtos respeitando o limite permitido
  Para realizar pedidos dentro das regras da loja

  Cenário: Adicionar exatamente 5 unidades do mesmo produto
    Dado que estou adicionando um produto ao carrinho
    Quando informar a quantidade 5
    Então o produto deve ser adicionado com sucesso
    E a quantidade do produto deve ser 5

  Cenário: Tentar adicionar mais de 5 unidades do mesmo produto
    Dado que estou adicionando um produto ao carrinho
    Quando informar a quantidade 6
    Então a operação deve ser impedida
    E a quantidade máxima permitida deve ser 5