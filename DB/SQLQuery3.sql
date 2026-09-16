CREATE DATABASE Loja_Auto;

USE Loja_Auto;

CREATE TABLE tbl_Cliente (

	id_cliente INT,
	cpf_cnpj INT,
	email VARCHAR(100),
	nome VARCHAR(100),
	endereco VARCHAR(100),
	PRIMARY KEY (id_cliente)


);

SELECT * FROM tbl_Cliente;

CREATE TABLE tbl_Pedido (

	id_pedido INT,
	status_n VARCHAR(100),
	valor float,
	data_dia VARCHAR(16),
	PRIMARY KEY (id_pedido)


);

SELECT * FROM tbl_Pedido;

CREATE TABLE tbl_Fornecedor (

	id_fornecedor INT,
	cnpj INT,
	email VARCHAR(100),
	razao_social VARCHAR(100),
	endereco VARCHAR(100),
	PRIMARY KEY (id_fornecedor)


);

SELECT * FROM tbl_Fornecedor;

CREATE TABLE tbl_Peca (

	id_peca INT,
	descricao VARCHAR(100),
	categoria VARCHAR(50),
	marca VARCHAR(50),
	estoque INT,
	preco_venda float,
	PRIMARY KEY (id_peca)


);

SELECT * FROM tbl_Peca;

CREATE TABLE tbl_ItemPedido (

	id_pedido INT,
	id_peca INT,
	quantidade INT,
	preco_unitario float,
    desconto float,
	sub_total float,
	FOREIGN KEY (id_pedido) REFERENCES tbl_Pedido (id_pedido),
	FOREIGN KEY (id_peca) REFERENCES tbl_Peca (id_peca),

);

SELECT * FROM tbl_ItemPedido;

CREATE TABLE tbl_Fornecimento_Peca (

	id_fornecedor INT,
	id_peca INT,
	preco_compra float,
	prazo_entrega_dias date,
	ativo VARCHAR(100),
	FOREIGN KEY (id_fornecedor) REFERENCES tbl_Fornecedor (id_fornecedor),
	FOREIGN KEY (id_peca) REFERENCES tbl_Peca (id_peca),

);

SELECT * FROM tbl_Fornecimento_Peca;
