CREATE DATABASE Clinica_medic;

USE Clinica_medic;

CREATE TABLE tbl_Medico (
	CRM VARCHAR(13),
	nome_med VARCHAR(100),
	RG VARCHAR(16),
	PRIMARY KEY (CRM),
);

SELECT * FROM tbl_Medico;

INSERT INTO tbl_Medico (CRM, nome_med, RG) VALUES
			('CRM/SP 148.962', 'Valmir Dos Demonios', '623.456.743-03'),
			('CRM/RJ 312.357', 'Valmir Dos Santos','433.786.066-09' ),
			('CRM/PR 356.789', 'Valmir Que Nao é Dos Santos', '453.127.987-08');

CREATE TABLE tbl_Paciente (
	RG VARCHAR(16),
	nome_paciente VARCHAR(100),
	endere�o VARCHAR(100),
	convenio VARCHAR(30),
	PRIMARY KEY (RG),
);

INSERT INTO tbl_Paciente (RG, nome_paciente, endereço, convenio) VALUES
			('623.453.743-67','Paciente Um','Rua Dos Figurantes ,19','Convenio :)'),
			('433.386.067-67','João Lucas Margarido','RUa Coração De Maçã ,72','MAIS saude'),
			('453.137.987-67','Denis Ovos Anus','Rua Açai Governadora Tia Bia ,67','MORE health');

SELECT * FROM tbl_Paciente;

CREATE TABLE tbl_Consulta (
	data_dia date,
	hora VARCHAR(6),
	cod_Consulta INT,
	rg_paciente VARCHAR(16),
	crm_medico VARCHAR(13),
	PRIMARY KEY (cod_Consulta),
	FOREIGN KEY (crm_medico) REFERENCES tbl_Medico(CRM),
	FOREIGN KEY (rg_paciente) REFERENCES tbl_Paciente(RG)

);

SELECT * FROM tbl_Consulta;

INSERT INTO tbl_Consulta (data_dia, hora, cod_Consulta, rg_paciente, crm_medico) VALUES 
			(02-04-2002,'02:00 AM', '000604','623.453.743-67','CRM/SP 148.962' ),
			(26-08-2004,'04:07 PM', '005403','433.386.067-67','CRM/RJ 312.357' ),
			(05-07-2005,'12:45 AM', '129900','453.137.987-67','CRM/PR 356.789' );