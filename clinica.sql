INSERT INTO paciente(NuPaciente, NoPaciente)
VALUES (1, 'Alexya'),
       (2, 'Alice'),
       (3, 'Caio'),
       (4, 'Cassiano'),
       (5, 'Joab'),
       (6, 'Luiz'),
       (7, 'Pedro')
       
INSERT INTO Quarto(NuQuarto, NuComodos)
VALUES (100, 2),
       (101, 2),
       (102, 3),
       (103, 3),
       (104, 2),
       (105, 4)
       
INSERT INTO PlanoSaude(CoPlano, NoPlano)
VALUES (1, 'UNIMED'),
       (2, 'AMIL'),
       (3, 'CAURN'),
       (4, 'petrobras')

INSERT INTO Internacao(IdInternacao, Numatricula, NuQuarto, Dainternacao)
VALUES (1, 6, 100, '2021/01/10'),
       (2, 6, 100, '2021/01/13'),
       (3, 6, 100, '2021/01/20'),
       (4, 1, 104, '2021/01/23'),
       (5, 2, 101, '2021/01/30'),
       (6, 3, 105, '2021/02/05'),
       (7, 4, 103, '2021/02/13'),
       (8, 5, 102, '2021/02/15'),
       (9, 7, 100, '2021/02/21'),
       (10, 7, 101, '2021/02/24')
       
INSERT INTO PacientePlano(IdPacientePlano, NuMatricula, CoPlano)
VALUES (1, 1, 1),
       (2, 1, 2),
       (3, 5, 3),
       (4, 2, 4),
       (5, 3, 2),
       (6, 4, 1),
       (7, 6, 2),
       (8, 7, 1)
       
       
       
INSERT INTO PlanoSaude(CoPlano, NoPlano)
VALUES (5, 'AGMED')

UPDATE Quarto
    SET NuComodos = 4
WHERE NuQuarto = 102 and NuQuarto = 103

UPDATE Paciente
    SET NoPaciente = 'Alexya Silva'
WHERE NuPaciente = 1

UPDATE Paciente
    SET NoPaciente = 'Alice Perreira'
WHERE NuPaciente = 2

UPDATE Paciente
    SET NoPaciente = 'Caio Sena'
WHERE NuPaciente = 3

UPDATE Paciente
    SET NoPaciente = 'Mateus Cassiano'
WHERE NuPaciente = 4

UPDATE Paciente
    SET NoPaciente = 'Joab Urbano'
WHERE NuPaciente = 5

UPDATE Paciente
    SET NoPaciente = 'Luiz Gustavo'
WHERE NuPaciente = 6

UPDATE Paciente
    SET NoPaciente = 'Pedro Vinicios'
WHERE NuPaciente = 7
       
DELETE FROM PacientePlano
WHERE NuMatricula = 1 and CoPlano = 1

DELETE FROM Internacao
WHERE NuMatricula = 6 and Dainternacao = '2021/01/20'
