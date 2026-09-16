CREATE DATABASE db_FirmaLimpeza;
USE db_FirmaLimpeza
CREATE TABLE tbl_Produto (
	cod_pro INT,
	nome VARCHAR (40),
	categoria VARCHAR (20),
	preco VARCHAR (10)
	PRIMARY KEY (cod_pro)
);

INSERT INTO tbl_Produto (cod_pro,nome,categoria,preco) VALUES
		(40, 'Azul de anjo ', 'Sabao', 9.50),
		(52, 'Limpa Diabo', 'Desinfetante', 14.50),
		(21, 'Esfrega-cao', 'Esponja', 6.20);

SELECT * FROM tbl_Produto;

CREATE TABLE tbl_Cliente (
	cod_cli INT,
	statos VARCHAR (10),
	nome VARCHAR (20),
	endereco VARCHAR (40),
	telefone VARCHAR (20),
	Limt_cred INT,
	PRIMARY KEY (cod_cli)
);
		INSERT INTO tbl_Cliente(cod_cli, statos, nome, endereco, telefone,Limt_cred) VALUES
			(1 , 'Bom' , 'Guilherme Bombado' , 'Beco do Esteroide', 11-03064-4018, 3064  ),
			(2 , 'Ruim' , 'Holocasto da silva', 'Beco do mal Lula', 11-01945-1313, 1945 ),
			(3 , 'Medio' , 'Batman Haymunndi ', 'Beco do bem Bolsonaro', 11-02222-1414, 2222 );

			SELECT * FROM tbl_Cliente