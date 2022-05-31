USE bystore;

-- INSERT INTO tabela(CAMPOS) VALUES(valores)
INSERT INTO cliente(nome, cpf) VALUES("Luís", "111.222.333-44");
INSERT INTO cliente(nome, cpf) VALUES("Felipe", "222.333.444-55");
INSERT INTO cliente(nome, cpf) VALUES("Katia", "333.444.555-66");


-- Pegando todas as colunas sem passar os campos
INSERT INTO produto VALUES(1, "i3", "Processador", "processadores\i3.png", 999.50);
INSERT INTO produto VALUES(2, "i5", "Processador", "processadores\i3.png", 999.50);
INSERT INTO produto(nome, categoria, imagem, valor) VALUES("i7", "Processador", "processadores\i7.png", 999.50);

INSERT INTO produto(nome, categoria, imagem, valor) VALUES("2800TI", "Placa de vídeo", "placa_de_video\i7.png", 1999.50);
INSERT INTO produto(nome, categoria, imagem, valor) VALUES("1050", "Placa de vídeo", "placa_de_video\i7.png", 1999.50);
INSERT INTO produto(nome, categoria, imagem, valor) VALUES("3090", "Placa de vídeo", "placa_de_video\i7.png", 1999.50);

INSERT INTO produto(nome, categoria, imagem, valor) VALUES("8GB", "RAM", "ram\ram.png", 1999.50);
INSERT INTO produto(nome, categoria, imagem, valor) VALUES("16GB", "RAM", "ram\ram.png", 1999.50);
INSERT INTO produto(nome, categoria, imagem, valor) VALUES("32GB", "RAM", "ram\ram.png", 1999.50);

INSERT INTO venda VALUES(1, 1);
INSERT INTO venda VALUES(2, 1);
INSERT INTO venda(id_cliente) VALUES(2);
INSERT INTO venda(id_cliente) VALUES(3);

INSERT INTO venda_produto VALUES(1, 1, 1);
INSERT INTO venda_produto VALUES(1, 7, 2);
INSERT INTO venda_produto VALUES(2, 6, 1);
INSERT INTO venda_produto VALUES(3, 6, 3);
INSERT INTO venda_produto VALUES(4, 3, 6);
INSERT INTO venda_produto VALUES(4, 1, 1);
INSERT INTO venda_produto VALUES(4, 8, 1);

SET SQL_SAFE_UPDATES = 0;

-- Sem passar filtro o valor muda na tabela toda!!
UPDATE produto SET valor = 1499.50;
UPDATE produto SET valor = 1999.50;

-- Sem passar filtro o valor muda na tabela toda!!
DELETE FROM produto; -- Erro por ser uma tabela pai, serve de foreign key
DELETE FROM venda_produto;

-- Limpando a tebela toda
TRUNCATE TABLE produto; -- Erro por ser uma tabela pai, serve de foreign key
TRUNCATE TABLE venda_produto;
