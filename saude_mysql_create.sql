CREATE TABLE `Paciente` (
	`NuMatricula` INT NOT NULL AUTO_INCREMENT,
	`NoPaciente` TEXTO NÃO NULO AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`NuMatricula`)
);

CRIAR TABELA `internacao` (
	`IdInternacao` INT NOT NULL AUTO_INCREMENT,
	`NuMatricula` INT NOT NULL AUTO_INCREMENT,
	`NoQuarto` INT NOT NULL AUTO_INCREMENT,
	`DaInternacoa` DATETIME NOT NULL,
	CHAVE PRIMÁRIA (`IdInternacao`)
);

CREATE TABLE `Quarto` (
	`NuQuarto` INT NOT NULL AUTO_INCREMENT,
	INT NOT NULL AUTO_INCREMENT `Nucomodos`,
	CHAVE PRIMÁRIA (`NuQuarto`)
);

CREATE TABLE `PacientePlano` (
	`IdPacientePlano` INT NOT NULL AUTO_INCREMENT,
	`NuMatricula` INT NOT NULL AUTO_INCREMENT,
	`CoPlanoSaude` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`IdPacientePlano`)
);

CREATE TABLE `PlanoSaude` (
	`CoplanoSaude` INT NOT NULL AUTO_INCREMENT,
	`NoplanoSaude` TEXT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`CoplanoSaude`)
);

ALTER TABLE `internacao` ADD CONSTRAINT `internacao_fk0` FOREIGN KEY (`NuMatricula`) REFERENCES `Paciente`(`NuMatricula`);

ALTER TABLE `internacao` ADD CONSTRAINT` internacao_fk1` FOREIGN KEY (`NoQuarto`) REFERÊNCIAS` Quarto` (`NuQuarto`);

ALTER TABLE `PacientePlano` ADD CONSTRAINT `PacientePlano_fk0` FOREIGN KEY (`NuMatricula`) REFERENCES `Paciente`(`NuMatricula`);

ALTER TABLE `PacientePlano` ADD CONSTRAINT `PacientePlano_fk1` FOREIGN KEY (`CoPlanoSaude`) REFERENCES `PlanoSaude`(`CoplanoSaude`);

