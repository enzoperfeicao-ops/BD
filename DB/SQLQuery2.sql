CREATE DATABASE db_limpeza;

USE db_limpeza;

CREATE TABLE tbl_produto (
		id INT,
		nome VARCHAR(100),
		categoria VARCHAR(100),
		preco VARCHAR(100),
		PRIMARY KEY (id)
);

INSERT INTO tbl_produto (id,nome,categoria,preco) VALUES 
		(1, 'SABAO', 'PO', '5.00') ,
		(2, 'DETERGENTE', 'LIQUIDO', '6.70') ,
		(3, 'CLORO', 'LIQUIDO', '22.00');

		SELECT * FROM tbl_produto;
  
CREATE TABLE tbl_cliente (
		cod_cliente INT,
		status_cliente VARCHAR(30),
		nome_cliente VARCHAR(100),
		limite_credito VARCHAR(30),
		PRIMARY KEY (cod_cliente)
);

INSERT INTO tbl_cliente (cod_cliente, status_cliente, nome_cliente, limite_credito) VALUES
		(101, 'BOM', 'FELIPE', '500'),
		(102, 'RUIM', 'LUCAS', '100'),
		(103, 'REGULAR', 'ALEX', '50');

		SELECT * FROM tbl_cliente;

CREATE TABLE tbl_pedido (
		numero VARCHAR(21),
		data_elaboracao date,
		quantidade INT,
		id_produto INT,
		cod_cliente INT,
		PRIMARY KEY (numero),
		FOREIGN KEY (id_produto) REFERENCES tbl_produto (id),
		FOREIGN KEY (cod_cliente) REFERENCES tbl_cliente (cod_cliente)

);

DROP TABLE tbl_pedido;

INSERT INTO tbl_pedido (numero, data_elaboracao, quantidade, id_produto, cod_cliente) VALUES
       ('(11)-16767900','07-04-2022', '670', '201', '101'),
	   ('(22)-20002000' ,'15-11-2022', '780', '302', '102'),
	   ('(33)-30003000','09-05-2022', '890', '403', '103');
	   
	   SELECT * FROM tbl_pedido;