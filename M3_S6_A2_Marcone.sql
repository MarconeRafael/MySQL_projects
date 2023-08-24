       
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
