DROP TABLE IF EXISTS EMPREGADO;
DROP TABLE IF EXISTS COMPANHIA;
DROP TABLE IF EXISTS TRABALHA;
DROP TABLE IF EXISTS GERENTE;

CREATE TABLE EMPREGADO (
	cod_empregado SERIAL NOT NULL,  
	nome_empregado VARCHAR(20) NOT NULL, 
	rua VARCHAR(100) NOT NULL, 
	cidade VARCHAR(100) NOT NULL, 
	salario REAL NOT NULL,
	PRIMARY KEY (cod_empregado)
);

CREATE TABLE COMPANHIA (
	cod_companhia SERIAL NOT NULL, 
	CNPJ CHAR(14) NOT NULL, 
	nome_companhia VARCHAR(100) NOT NULL,
	cidade_companhia VARCHAR(100) NOT NULL,
	PRIMARY KEY (cod_companhia)
);

CREATE TABLE TRABALHA (
	cod_empregado int DEFAULT NULL,
	cod_companhia int DEFAULT NULL,
	PRIMARY KEY (cod_empregado, cod_companhia),
	FOREIGN KEY (cod_empregado) 
	REFERENCES EMPREGADO(cod_empregado) 
	ON DELETE SET NULL,
	FOREIGN KEY (cod_companhia) 
	REFERENCES COMPANHIA(cod_companhia) 
	ON DELETE SET NULL
);

CREATE TABLE GERENTE(
	cod_empregado int DEFAULT NULL,
	cod_companhia int DEFAULT NULL,
	PRIMARY KEY (cod_empregado, cod_companhia),
	FOREIGN KEY (cod_empregado) 
	REFERENCES EMPREGADO(cod_empregado) 
	ON DELETE SET NULL,
	FOREIGN KEY (cod_companhia) 
	REFERENCES COMPANHIA(cod_companhia) 
	ON DELETE SET NULL
);