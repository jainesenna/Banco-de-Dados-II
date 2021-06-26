
DROP TABLE IF EXISTS EMPREGADO;
DROP TABLE IF EXISTS COMPANHIA;
DROP TABLE IF EXISTS TRABALHA;
DROP TABLE IF EXISTS GERENTE;

CREATE TABLE EMPREGADO (
	cod_empregado CHAR(9) PRIMARY KEY NOT NULL, 
	nome_empregado VARCHAR(20) NOT NULL, 
	rua VARCHAR(100) NOT NULL, 
	cidade VARCHAR(100) NOT NULL, 
	salario REAL NOT NULL	
);

CREATE TABLE COMPANHIA (
	cod_companhia CHAR(9) PRIMARY KEY NOT NULL,
	CNPJ CHAR(15) NOT NULL, 
	nome_companhia VARCHAR(100) NOT NULL,
	cidade_companhia VARCHAR(100) NOT NULL
);

CREATE TABLE TRABALHA (
	cod_empregado CHAR(9),
	cod_companhia CHAR(9)
);

CREATE TABLE GERENTE(
	cod_empregado CHAR(9),
	cod_companhia CHAR(9)
);

ALTER TABLE TRABALHA
ADD FOREIGN KEY (cod_empregado) REFERENCES EMPREGADO(cod_empregado);

ALTER TABLE TRABALHA
ADD FOREIGN KEY (cod_companhia) REFERENCES COMPANHIA(cod_companhia);

ALTER TABLE GERENTE
ADD FOREIGN KEY (cod_empregado) REFERENCES EMPREGADO(cod_empregado);

ALTER TABLE GERENTE
ADD FOREIGN KEY (cod_companhia) REFERENCES COMPANHIA(cod_companhia);