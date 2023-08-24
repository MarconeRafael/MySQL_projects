SELECT NoAutor As 'Autor', NoNacionalidade AS 'Nacionalidade'
	FROM tbautor AS A
INNER JOIN tbnacionalidade AS N
	ON A.IdNacionalidade = N.IdNacionalidade
    
SELECT NoAluno As 'Aluno', NoCurso AS 'Curso', TxEmail AS 'E-mail'
	FROM tbaluno AS A
INNER JOIN tbcurso AS C
	ON A.IdCurso = C.IdCurso
INNER JOIN tbemail As E
	ON A.NuMatricula = E.NuMatricula
    
SELECT NoObra As 'Titulo', DaEmprestimo AS 'Data de emprétimo'
	FROM tbemprestimoitem AS I
INNER JOIN tbemprestimo AS E
	ON I.IdEmprestimo = E.IdEmprestimo
INNER JOIN tbobra As O
	ON O.IdObra = I.IdObra
WHERE DaEmprestimo = '2019-05-21' OR DaEmprestimo = '2019-06-18'

SELECT NoOperador AS 'Operador', COUNT(IdEmprestimoItem) AS 'Quantidade de empréstimos'
	FROM tbemprestimo AS E
INNER JOIN tbemprestimoitem AS I
	ON E.IdEmprestimo = I.IdEmprestimo
INNER JOIN tboperador As O
	ON E.IdOperador = O.IdOperador
GROUP BY NoOperador

SELECT NoAluno AS 'Alunos de informática', COUNT(IdEmprestimoItem) AS 'Quantidade de empréstimos'
	FROM tbemprestimo AS E
INNER JOIN tbemprestimoitem AS I
	ON E.IdEmprestimo = I.IdEmprestimo
INNER JOIN tbaluno As A
	ON E.NuMatricula = A.NuMatricula
WHERE IdCurso = 1
GROUP BY NoAluno