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

-- 4) Encontre os nomes de todos os empregados, no banco de dados, 
-- que moram na mesma cidade da companhia em que trabalham.
SELECT DISTINCT E.nome_empregado
FROM EMPREGADO E
WHERE E.cod_empregado IN (	
	SELECT T.cod_empregado
	FROM TRABALHA T
	WHERE T.cod_companhia IN (SELECT C.cod_companhia
	FROM COMPANHIA C
	WHERE E.cidade = C.cidade_companhia)
);

-- 5) Encontre os nomes de todos os empregados que moram na mesma cidade 
-- e rua de seu gerente.
SELECT DISTINCT E.nome_empregado
FROM EMPREGADO E JOIN TRABALHA T 
ON E.cod_empregado = T.cod_empregado LEFT JOIN GERENTE G
ON E.cod_empregado = G.cod_empregado
WHERE E.cod_empregado NOT IN (SELECT G.cod_empregado FROM GERENTE G)
AND T.cod_companhia IN (SELECT G.cod_companhia FROM GERENTE G)
AND E.cidade IN (SELECT E.cidade FROM EMPREGADO E
	WHERE E.cod_empregado IN (SELECT G.cod_empregado FROM GERENTE G))
AND E.rua IN (SELECT E.rua FROM EMPREGADO E 
	WHERE E.cod_empregado IN (SELECT G.cod_empregado FROM GERENTE G)
);

-- 6) Encontre os nomes de todos os empregados, no banco de dados, 
-- que não trabalham para a Soft Sell.
SELECT E.nome_empregado
FROM EMPREGADO E
WHERE E.cod_empregado IN (	
	SELECT T.cod_empregado 
	FROM TRABALHA T
	WHERE T.cod_companhia IN (SELECT C.cod_companhia
	FROM COMPANHIA C
	WHERE C.nome_companhia NOT IN ('Soft Sell'))
);