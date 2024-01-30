CREATE TABLE SuperMarketDB.Produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_de_barras TEXT NOT NULL UNIQUE,
    nome TEXT NOT NULL,
    marca TEXT,
    categoria TEXT,
    preco REAL,
    quantidade_em_estoque INTEGER,
    data_cadastro DATE DEFAULT CURRENT_DATE
);