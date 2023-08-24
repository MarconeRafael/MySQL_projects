1 -----------------------------------------------------------------
SELECT NoAutor As Autor, NoNacionalidade AS Nacionalidade
	FROM tbautor AS aut
INNER JOIN tbnacionalidade AS nac
	ON aut.IdNacionalidade = nac.IdNacionalidade

2 -----------------------------------------------------------------
SELECT NoAluno AS 'Aluno(a)', NoCurso AS Curso, TxEmail AS Email
	FROM tbaluno AS a
INNER JOIN tbcurso AS cur
	ON a.IdCurso = cur.IdCurso 
INNER JOIN tbemail as em
	ON a.NuMatricula = em.NuMatricula

3 -----------------------------------------------------------------
SELECT NoOBra AS Obra
	FROM tbemprestimo AS e 
INNER JOIN tbemprestimoitem AS ei
	ON e.IdEmprestimo = ei.IdEmprestimo
INNER JOIN tbobra AS o 
	ON o.IdObra = ei.IdObra
WHERE DaEmprestimo = '2019/05/21' OR DaEmprestimo = '2019/06/18'


4 -----------------------------------------------------------------
SELECT NoOperador AS Operadores, COUNT(IdEmprestimo) AS 'Quantidade de Empréstimos'
	FROM tbemprestimo AS e    
INNER JOIN tboperador AS op
	ON e.IdOperador = op.IdOperador
GROUP BY NoOperador


5 -----------------------------------------------------------------
SELECT NoAluno AS 'Alunos de Informática', COUNT(IdEmprestimoItem) AS 'Quantidade de Empréstimos'
	FROM tbemprestimoitem AS ei
INNER JOIN tbemprestimo AS e 
	ON e.IdEmprestimo = ei.IdEmprestimo
INNER JOIN tbaluno AS a
	ON a.NuMatricula = e.NuMatricula
WHERE IdCurso = 1
GROUP BY NoAluno











