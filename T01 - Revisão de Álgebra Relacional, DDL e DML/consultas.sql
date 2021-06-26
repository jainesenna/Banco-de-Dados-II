-- 1) Encontre os nomes de todos os empregados que trabalham 
-- para a Companhia Soft Sell.
SELECT E.nome_empregado
FROM EMPREGADO E
WHERE E.cod_empregado IN (	
	SELECT T.cod_empregado
	FROM TRABALHA T
	WHERE T.cod_companhia IN (SELECT C.cod_companhia
	FROM COMPANHIA C
	WHERE C.nome_companhia LIKE  'Soft Sell')
);

-- 2) Encontre todos os nomes das cidades dos empregados que trabalham na Soft Sell.
SELECT E.cidade
FROM EMPREGADO E
WHERE E.cod_empregado IN (	
	SELECT T.cod_empregado
	FROM TRABALHA T
	WHERE T.cod_companhia IN (SELECT C.cod_companhia
	FROM COMPANHIA C
	WHERE C.nome_companhia LIKE 'Soft Sell')
);

-- 3) Encontre os nomes, endereço e cidade da residência de todos 
-- os empregados da Soft Sell que ganham mais de dez mil reais.
SELECT E.nome_empregado, E.rua, E.cidade
FROM EMPREGADO E
WHERE E.cod_empregado IN (	
	SELECT T.cod_empregado
	FROM TRABALHA T
	WHERE T.cod_companhia IN (
		SELECT C.cod_companhia 
		FROM COMPANHIA C
		WHERE C.nome_companhia LIKE 'Soft Sell')
		AND E.salario > '10.000'
);