CREATE TABLE `TbMarca` (
	`IdMarca` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`NoMarca` varchar(30) NOT NULL,
	PRIMARY KEY (`IdMarca`)
);

CREATE TABLE `TbProduto` (
	`IdProduto` INT NOT NULL AUTO_INCREMENT,
	`IdCategoria` INT NOT NULL,
	`IdMarca` INT NOT NULL,
	`PrecoProd` FLOAT NOT NULL,
	`QtMemoria` INT NOT NULL,
	`TmTela` FLOAT NOT NULL,
	`IdUnidadeTela` INT NOT NULL,
	`IdCor` INT NOT NULL,
	`Estrelas` FLOAT NOT NULL,
	`DescricaoProduto` varchar(250) NOT NULL,
	`IdTecConexao` INT NOT NULL,
	PRIMARY KEY (`IdProduto`)
);

CREATE TABLE `TbCor` (
	`IdCor` INT NOT NULL AUTO_INCREMENT,
	`NoCor` varchar(25) NOT NULL,
	PRIMARY KEY (`IdCor`)
);

CREATE TABLE `TbCategoria` (
	`IdCategoria` INT NOT NULL AUTO_INCREMENT,
	`NoCategoria` varchar(250) NOT NULL,
	PRIMARY KEY (`IdCategoria`)
);

CREATE TABLE `TbUnidade` (
	`IdUnidadeTela` INT NOT NULL AUTO_INCREMENT,
	`TipoUnidade` varchar(25) NOT NULL,
	PRIMARY KEY (`IdUnidadeTela`)
);

CREATE TABLE `TecConexao` (
	`IdTecConexao` INT NOT NULL AUTO_INCREMENT,
	`NoTecConexao` varchar(25) NOT NULL,
	PRIMARY KEY (`IdTecConexao`)
);

ALTER TABLE `TbProduto` ADD CONSTRAINT `TbProduto_fk0` FOREIGN KEY (`IdCategoria`) REFERENCES `TbCategoria`(`IdCategoria`);

ALTER TABLE `TbProduto` ADD CONSTRAINT `TbProduto_fk1` FOREIGN KEY (`IdMarca`) REFERENCES `TbMarca`(`IdMarca`);

ALTER TABLE `TbProduto` ADD CONSTRAINT `TbProduto_fk2` FOREIGN KEY (`IdUnidadeTela`) REFERENCES `TbUnidade`(`IdUnidadeTela`);

ALTER TABLE `TbProduto` ADD CONSTRAINT `TbProduto_fk3` FOREIGN KEY (`IdCor`) REFERENCES `TbCor`(`IdCor`);

ALTER TABLE `TbProduto` ADD CONSTRAINT `TbProduto_fk4` FOREIGN KEY (`IdTecConexao`) REFERENCES `TecConexao`(`IdTecConexao`);

