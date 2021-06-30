INSERT INTO EMPREGADO (cod_empregado, nome_empregado, rua, cidade, salario)
VALUES ('1', 'Taciano', 'Rua Abelardo Meira', 'Caicó', 15.000);

INSERT INTO EMPREGADO (cod_empregado, nome_empregado, rua, cidade, salario)
VALUES ('2', 'Flavius', 'Rua Adelbal Costa', 'Caicó', 20.000);

INSERT INTO EMPREGADO (cod_empregado, nome_empregado, rua, cidade, salario)
VALUES ('3', 'Luiz Paulo', 'Rua Abelardo Meira', 'Paraiba', 10.000);

INSERT INTO EMPREGADO (cod_empregado, nome_empregado, rua, cidade, salario)
VALUES ('4', 'Oswaldo', 'Rua Adelbal Costa', 'Caicó', 9.000);

INSERT INTO EMPREGADO (cod_empregado, nome_empregado, rua, cidade, salario)
VALUES ('5', 'Lucas Melo', 'Rua Abelardo Meirao', 'Acari', 8.000);

INSERT INTO COMPANHIA (cod_companhia, CNPJ, nome_companhia, cidade_companhia)
VALUES ('1', '12345678901234', 'Soft Sell', 'Caicó');

INSERT INTO COMPANHIA (cod_companhia, CNPJ, nome_companhia, cidade_companhia)
VALUES ('2', '12345678901222', 'JJ LTDA', 'Floripa');

INSERT INTO TRABALHA (cod_empregado, cod_companhia)
VALUES ('1', '1');

INSERT INTO TRABALHA (cod_empregado, cod_companhia)
VALUES ('2', '1');

INSERT INTO TRABALHA (cod_empregado, cod_companhia)
VALUES ('3', '2');

INSERT INTO TRABALHA (cod_empregado, cod_companhia)
VALUES ('4', '1');

INSERT INTO TRABALHA (cod_empregado, cod_companhia)
VALUES ('5', '2');

INSERT INTO GERENTE(cod_empregado, cod_companhia)
VALUES ('1','1');

INSERT INTO GERENTE(cod_empregado, cod_companhia)
VALUES ('2','2');