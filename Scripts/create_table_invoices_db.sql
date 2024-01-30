-- Tabela "invoices"
CREATE TABLE InvoicesDB.invoices (
    id_invoice INTEGER PRIMARY KEY,
    estabelecimento TEXT,
    data_hora DATETIME,
    total_bruto REAL,
    total_descontos REAL,
    total_acrescimos REAL,
    total_liquido REAL,
    metodo_pagamento TEXT,
    valor_pago REAL
);

-- Tabela "detalhe_invoice"
CREATE TABLE InvoicesDB.itens_fatura (
    id_item INTEGER PRIMARY KEY AUTOINCREMENT,
    id_invoice INTEGER,
    codigo_produto INTEGER,
    nome_produto TEXT,
    unidade TEXT,
    quantidade TEXT,
    valor_unitario REAL,
    valor_imposto REAL,
    valor_total REAL,
    valor_desconto REAL,
    FOREIGN KEY (id_invoice) REFERENCES invoices(id_invoice),
    UNIQUE (id_invoice, id_item) -- Garante a unicidade da combinação id_invoice e id_item
);
