-- Criação das tabelas
CREATE TABLE Loja (
  id_loja INT PRIMARY KEY,
  nome VARCHAR(100),
  regiao VARCHAR(50)
);

CREATE TABLE Produto (
  id_produto INT PRIMARY KEY,
  descricao VARCHAR(100),
  categoria VARCHAR(50)
);

CREATE TABLE Perda (
  id_perda INT PRIMARY KEY,
  id_loja INT,
  id_produto INT,
  tipo_perda VARCHAR(20), -- Ex: 'Quebra' ou 'Desvio'
  quantidade INT,
  data DATE,
  FOREIGN KEY (id_loja) REFERENCES Loja(id_loja),
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Inserção de dados simulados
INSERT INTO Loja VALUES (1, 'Loja Centro', 'Sul');
INSERT INTO Produto VALUES (101, 'Leite Integral', 'Alimentos');

INSERT INTO Perda VALUES (1, 1, 101, 'Quebra', 12, '2025-01-05');
