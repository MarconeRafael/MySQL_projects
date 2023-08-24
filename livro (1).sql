CREATE DATABASE dblivro;

USE dblivro;


CREATE TABLE `tbautor` (
  `IdAutor` int(11) NOT NULL,
  `NoAutor` varchar(50) DEFAULT NULL,
  `IdNacionalidade` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `tbeditora` (
  `IdEditora` tinyint(11) NOT NULL,
  `NoEditora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbidioma` (
  `IdIdioma` tinyint(4) NOT NULL,
  `NoIdioma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbnacionalidade` (
  `IdNacionalidade` tinyint(4) NOT NULL,
  `NoNacionalidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





CREATE TABLE `tblivro` (
  `IdLivro` int(11) NOT NULL,
  `NoLivro` varchar(150) DEFAULT NULL,
  `NuAno` smallint(6) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `VaPreco` decimal(5,2) DEFAULT NULL,
  `IdIdioma` tinyint(4) DEFAULT NULL,
  `IdEditora` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `tbautorlivro` (
  `IdAutorLivro` int(11) NOT NULL,
  `IdAutor` int(11) DEFAULT NULL,
  `IdLivro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `tbautor`
  ADD PRIMARY KEY (`IdAutor`),
  ADD KEY `IdNacionalidade` (`IdNacionalidade`);

ALTER TABLE `tbautorlivro`
  ADD PRIMARY KEY (`IdAutorLivro`),
  ADD KEY `IdAutor` (`IdAutor`),
  ADD KEY `IdLivro` (`IdLivro`);
  
ALTER TABLE `tbeditora`
  ADD PRIMARY KEY (`IdEditora`);



ALTER TABLE `tbidioma`
  ADD PRIMARY KEY (`IdIdioma`);
  
ALTER TABLE `tbnacionalidade`
  ADD PRIMARY KEY (`IdNacionalidade`);


ALTER TABLE `tblivro`
  ADD PRIMARY KEY (`IdLivro`),
  ADD KEY `IdIdioma` (`IdIdioma`),
  ADD KEY `IdEditora` (`IdEditora`);
  
ALTER TABLE `tbautor`  
  ADD CONSTRAINT `IdNacionalidade` FOREIGN KEY (`IdNacionalidade`) REFERENCES `tbnacionalidade` (`IdNacionalidade`);


ALTER TABLE `tbautorlivro`
  ADD CONSTRAINT `IdAutor` FOREIGN KEY (`IdAutor`) REFERENCES `tbautor` (`IdAutor`),
  ADD CONSTRAINT `IdLivro` FOREIGN KEY (`IdLivro`) REFERENCES `tblivro` (`IdLivro`);


ALTER TABLE `tblivro`
  ADD CONSTRAINT `FK_EditoraLivro` FOREIGN KEY (`IdEditora`) REFERENCES `tbeditora` (`IdEditora`),
  ADD CONSTRAINT `IdIdioma` FOREIGN KEY (`IdIdioma`) REFERENCES `tbidioma` (`IdIdioma`);
COMMIT;


INSERT INTO `tbautor` (`IdAutor`, `NoAutor`, `IdNacionalidade`) VALUES
(1, 'Turley, Paul', 2),
(2, 'Manzano, José', 1),
(3, 'Coronel, Carlos', 1),
(4, 'Sheldon, Sidney', 2),
(5, 'Netto, Vladimir', 1),
(6, 'Peter, Robert', 2),
(7, 'Harrington, Roger', 2),
(8, 'Ryan, James', 2),
(9, 'Brown, Dan', 2),
(10, 'Finlan, Christopher', 2),
(11, 'Sirin, Vladimir', 3);


INSERT INTO `tbeditora` (`IdEditora`, `NoEditora`) VALUES
(1, 'Erica'),
(2, 'Produção Independente'),
(3, 'Record'),
(4, 'HarperOne'),
(5, 'Ediciones Urano'),
(6, 'Sextante'),
(7, 'Pearson'),
(8, 'Primeira Pessoa'),
(9, 'Wrox');


INSERT INTO `tbidioma` (`IdIdioma`, `NoIdioma`) VALUES
(1, 'Portugês'),
(2, 'Inglês'),
(3, 'Espanhol');

INSERT INTO `tbnacionalidade` (`IdNacionalidade`, `NoNacionalidade`) VALUES
(1, 'Brasileiro'),
(2, 'Americano'),
(3, 'Suiço');


INSERT INTO `tbobra` (`IdObra`, `NoObra`, `NuAno`, `NuEdicao`, `VaPreco`, `IdIdioma`, `IdEditora`) VALUES
(1, 'Professional Microsoft SQL Server 2016', 2017, 1, '179.57', 2, 9),
(2, 'Microsoft Essencial Windows 7 Professional', 2010, 2, '103.90', 1, 1),
(3, 'Sistemas de Banco de Dados', 2010, 8, '239.99', 1, 7),
(4, 'Manhã, Tarde e Noite', 2011, 23, '28.78', 1, 3),
(5, 'Lava Jato', 2016, 3, '49.90', 1, 8),
(6, 'How to get Away with Murder', 2017, 10, '44.00', 2, 2),
(7, 'Plano Perfeito', 2011, 1, '36.97', 1, 3),
(8, 'Wait, What?', 2017, 1, '41.00', 2, 4),
(9, 'La Fortaleza Digital', 2009, NULL, '130.00', 3, 5),
(10, 'Ponto de Impacto', 2005, 1, '62.00', 1, 6),
(11, 'Juízo Final', 2011, 1, '29.94', 1, 3);

INSERT INTO `tbautorobra` (`IdAutorObra`, `IdAutor`, `IdObra`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 3),
(7, 7, 6),
(8, 4, 7),
(9, 8, 8),
(10, 9, 9),
(11, 9, 10),
(12, 10, 1),
(13, 4, 11);