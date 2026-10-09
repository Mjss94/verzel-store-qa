
const { test, expect } = require('@playwright/test');

const API = 'https://verzel-store.qa-test-verzel-store.workers.dev/api';

test('CT033 - Consultar produto existente', async ({ request }) => {
  const response = await request.get(`${API}/produtos/P001`);

  expect(response.status()).toBe(200);

  const body = await response.text();
  expect(body).toContain('Camiseta Essencial');
});

test('CT034 - Consultar produto inexistente', async ({ request }) => {
  const response = await request.get(`${API}/produtos/P999`);

  expect(response.status()).toBe(404);

  const body = await response.text();
  expect(body).toContain('PRODUTO_NAO_ENCONTRADO');
});

test('CT035 - Calcular carrinho com produto válido', async ({ request }) => {
  const response = await request.post(`${API}/carrinho/calcular`, {
    data: {
      itens: [
        { produtoId: 'P001', quantidade: 1 }
      ]
    }
  });

  expect(response.status()).toBe(200);

  const body = await response.json();

  expect(body.subtotal).toBeCloseTo(59.9);
  expect(body.frete).toBeCloseTo(19.9);
  expect(body.total).toBeCloseTo(79.8);
});
