CREATE TABLE SuperMarketDB.produtos_comprados (
    id_ordem INTEGER PRIMARY KEY AUTOINCREMENT,
    id_invoice TEXT,
    codigo_produto TEXT NOT NULL,
    nome TEXT NOT NULL,
    marca TEXT,
    preco REAL,
    quantidade_comprada INTEGER,
    data_cadastro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (codigo_produto) REFERENCES SuperMarketDB.produtos(codigo_de_barras),
    FOREIGN KEY (id_invoice) REFERENCES InvoicesDB.valor_comra(id_invoice)
);

CREATE TABLE MarketProductCatalogDB.produtos_atacadao_gopiuva (
    codigo_produto INTEGER PRIMARY KEY,
    codigo_de_barras TEXT NOT NULL,
    id_mercado SERIAL NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (codigo_de_barras) REFERENCES SuperMarketDB.produtos(codigo_de_barras),
    FOREIGN KEY (id_mercado) REFERENCES SuperMarketDB.mercados(id_mercado)
);

CREATE TABLE SuperMarketDB.produtos (
    codigo_de_barras TEXT PRIMARY KEY,
    nome TEXT NOT NULL CHECK (LENGTH(nome) <= 100),
    marca TEXT CHECK (LENGTH(marca) <= 50),
    categoria TEXT CHECK (LENGTH(categoria) <= 50),
    data_cadastro DATE DEFAULT CURRENT_DATE,
);

CREATE TABLE SuperMarketDB.mercados (
    id_mercado SERIAL PRIMARY KEY,
    nome_mercado TEXT NOT NULL,
    endereco TEXT,
    cidade TEXT,
    estado TEXT,
    cep TEXT,
    telefone TEXT,
    data_cadastro DATE DEFAULT CURRENT_DATE
);
