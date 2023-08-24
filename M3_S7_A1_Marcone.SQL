INSERT tbaluno (`NuMatricula`, `NoAluno`, `TxIngresso`, `IdCurso`)
VALUE (40, 'Pedro Felipe', '2017.1', 3);

INSERT tbemail (`IdEmail`, `TxEmail`, `NuMatricula`)
VALUE (27, 'pedro.felipe@gmail.com', 40),
	  (28, 'predolipe@yahoo.com.br', 40)

UPDATE tbaluno
SET TxIngresso = '2020.1'
WHERE IdCurso = 3

SELECT NoAutor 
    FROM tbautor 
WHERE IdNacionalidade = 2

SELECT NoObra, NuAno
	FROM tbobra
WHERE VaPreco>=30.00 AND VaPreco<=50.00
ORDER BY VaPreco DESC

SELECT NoObra, NuAno
	FROM tbobra
WHERE IdEditora = 3 or IdEditora = 5 or IdEditora = 7
ORDER BY NoObra ASC