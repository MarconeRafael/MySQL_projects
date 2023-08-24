SELECT NoObra, Vapreco
	FROM tbobra
WHERE NuAno IN(2005, 2009, 2011)

SELECT NoObra, VaPreco
	FROM tbobra
WHERE NuAno BETWEEN 2005 AND 2011

SELECT MIN(VaPreco) AS 'MaisBarrato', MAX(VaPreco) AS 'MaisCaro', AVG(VaPreco) AS 'PrecoMedio'
	FROM tbobra
WHERE IdEditora = 3	

SELECT TxIngresso AS 'Semestre_ingresso', 
	COUNT(NuMatricula) AS 'Quantidade_Aunos'
	FROM tbaluno
GROUP BY TxIngresso

SELECT COUNT(NoAutor) AS 'QtAutores'
	FROM tbautor
WHERE NoAutor LIKE '%Vladimir%'