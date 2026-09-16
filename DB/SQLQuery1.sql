CREATE DATABASE Confe_taria;

USE Confe_taria;

CREATE TABLE tbl_Cliente (
	cod_Cliente INT,
	nome VARCHAR(100),
	endere�o VARCHAR(100),
	PRIMARY KEY (cod_Cliente)
);

SELECT * FROM tbl_Cliente;

INSERT INTO tbl_Cliente (cod_Cliente, nome, endere�o) VALUES
		(101, 'Diego', 'Rua do Margarido'),
		(102, 'Sophia', 'Rua Sarakubitschek' ),
		(103, 'Leticia', 'Rua Cora��o de Ma��');


CREATE TABLE tbl_Pedido (
	cod_Pedido INT,
	data_dia date,
	valor_total float,
	PRIMARY KEY (cod_Pedido)
);


INSERT INTO tbl_Pedido(cod_Pedido, data_dia, valor_total) VALUES
		(201, '01-02-2002','500'),
		(202, '03-04-1994','100'),
		(203, '04-07-2003','50');

SELECT * FROM tbl_Pedido;

CREATE TABLE tbl_Telefone_cliente (
	cod_CLiente INT,
	Telefone VARCHAR(16),
	FOREIGN KEY (cod_CLiente) REFERENCES tbl_Cliente (cod_Cliente),
	PRIMARY KEY (Telefone)
);

SELECT * FROM tbl_Telefone_cliente;

INSERT INTO tbl_Telefone_cliente(cod_CLiente, Telefone) VALUES
		(101, '(11)-980392374'),
		(102, '(11)-969394709'),
		(103, '(11)-949367404');


CREATE TABLE tbl_Produto (
	cod_Produto INT,
	descri�ao VARCHAR(300),
	valor_kg float,
	PRIMARY KEY (cod_Produto)
);

SELECT * FROM tbl_Produto;

INSERT INTO tbl_Produto (cod_Produto, descri�ao, valor_kg) VALUES
		(401, 'BOM', '500'),
		(402, 'RUIM','100'),
		(403, 'REGULAR','50');


CREATE TABLE tbl_Item_pedido (
	quantidade INT,
	cod_Pedido INT,
	cod_Produto INT,
	FOREIGN KEY (cod_Pedido) REFERENCES tbl_Pedido (cod_Pedido),
	FOREIGN KEY (cod_Produto) REFERENCES tbl_Produto (cod_Produto)

);

SELECT * FROM tbl_Item_pedido;
SELECT * FROM tbl_Produto;
SELECT * FROM tbl_Telefone_cliente;
SELECT * FROM tbl_Pedido;
SELECT * FROM tbl_Cliente;

INSERT INTO () VALUES