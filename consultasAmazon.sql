SELECT TxDescricaoAnuncio AS 'Descrição', NoCor AS 'Cor', MedidaDisplay AS 'Tamanho display', VaUnitario AS 'Preço'
    FROM TbProduto AS p
INNER JOIN TbCor AS c
     ON c.CoCor = p.CoCor
WHERE CoCategoria = 1 AND CoMarca = 1 AND QtArmazenamento = 64 AND VaUnitario<5.000


SELECT TxDescricaoAnuncio AS 'Descrição', NoMarca AS 'Marca', NoCor AS 'Cor', QtArmazenamento AS 'Armazenamento'
    FROM TbProduto AS p
INNER JOIN TbMarca AS m
	ON m.CoMarca = p.CoMarca
INNER JOIN TbCor AS c
	ON c.CoCor = p.CoCor
WHERE CoCategoria = 1 AND MedidaDisplay<6.5

SELECT TxDescricaoAnuncio AS 'Descrição', NoCor AS 'Cor', MedidaDisplay AS 'Tamanho display', VaUnitario AS 'Preço'
    FROM TbProduto AS p
INNER JOIN TbCor AS c
	ON c.CoCor = p.CoCor
WHERE CoCategoria = 2 AND InTecConexao = 1 AND CoMarca = 1

SELECT AVG(VaUnitario) As 'Preço médio dos smartphones', AVG(VaUnitario) 'Preço médio dos relógios'
    FROM TbProduto
GROUP BY CoCategoria


SELECT TxDescricaoAnuncio AS 'Descrição', NoMarca AS 'Marca', NoCategoria AS 'Categoria', VaUnitario AS 'Preço'
    FROM TbProduto AS p
INNER JOIN TbMarca AS m
	ON m.CoMarca = p.CoMarca
INNER JOIN TbCategoria AS c
	ON c.CoCategoria = p.CoCategoria
WHERE NuEstrelas >= 4.5