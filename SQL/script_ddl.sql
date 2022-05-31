CREATE DATABASE bystore;
USE bystore;

DROP DATABASE bystore1;

CREATE TABLE cliente(
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  pf VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY(id_cliente)
);

CREATE TABLE produto(
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(225) NOT NULL,
  categoria VARCHAR(255) NOT NULL,
  imagem VARCHAR(255) NOT NULL,
  valor FLOAT NOT NULL,
  PRIMARY KEY(id_produto)
);

CREATE TABLE venda(
  id_venda INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  PRIMARY KEY(id_venda),
  FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE venda_produto(
  id_venda INT NOT NULL,
  id_produto INT NOT NULL,
  PRIMARY KEY(id_venda, id_produto),
  FOREIGN KEY(id_venda) REFERENCES venda(id_venda),
  FOREIGN KEY(id_produto) REFERENCES produto(id_produto)
);

ALTER TABLE venda_produto ADD quantidade INT NOT NULL;

CREATE INDEX cpfs ON cliente(cpf);
CREATE INDEX nomes ON cliente(nome);
CREATE INDEX idx_categorias ON produto(categoria);

-- Erro pelo fato de já existir
CREATE DATABASE bystore;
CREATE TABLE venda(
  id_venda INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  PRIMARY KEY(id_venda),
  FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

-- Verificando antes da criação
CREATE DATABASE IF NOT EXISTS bystore;
CREATE TABLE IF NOT EXISTS venda(
  id_venda INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  PRIMARY KEY(id_venda),
  FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

RENAME TABLE venda TO venda_cliente;
RENAME TABLE venda_cliente TO venda;