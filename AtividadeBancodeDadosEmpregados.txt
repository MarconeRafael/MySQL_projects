0FN

Empregado = (@MatriculaEmpregado, NomeEmpregado, CodigoDepartamento, 
NomeDepartamento, CodigoGerente, 
NomeGerente, {NúmeroProjeto, HorasTrabalhadasNoProjeto, NomeProjeto, DataInicioProjeto})

1FN

Empregado = (@MatriculaEmpregado, NomeEmpregado, CodigoDepartamento, NomeDepartamento, CodigoGerente, 
NomeGerente)
Detalhes do Projeto = (@MatriculaEmpregado, @NúmeroProjeto, HorasTrabalhadasNoProjeto, NomeProjeto, DataInicioProjeto)

2FN

Empregado = (@MatriculaEmpregado, NomeEmpregado, CodigoDepartamento, 
NomeDepartamento, CodigoGerente, 
NomeGerente)
DetalhesTrabalho = (@MatriculaEmpregado, @NúmeroProjeto, HorasTrabalhadasNoProjeto, DataInicioProjeto)
Projeto = (@NúmeroProjeto, NomeProjeto)

3FN

Empregado = (@MatriculaEmpregado, NomeEmpregado, CodigoDepartamento, CodigoGerente)
DetalhesTrabalho = (@MatriculaEmpregado, @NúmeroProjeto, HorasTrabalhadasNoProjeto, DataInicioProjeto)
Projeto = (@NúmeroProjeto, NomeProjeto)
Depto = (@CodigoDepartamento, NomeDepartamento)
Gerente = (@CodigoGerente, NomeGerente)
