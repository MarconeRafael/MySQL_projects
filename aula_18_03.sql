SELECT NoObra AS Título,
	   NoIdioma AS Idioma,
       NoEditora AS Editora,
       NoAutor AS Autor
  FROM TbObra AS o
 INNER JOIN TbEditora AS e
    ON o.IdEditora = e.IdEditora
 INNER JOIN TbIdioma AS i
    ON o.IdIdioma = i.IdIdioma
 INNER JOIN TbAutorObra AS ao
    ON o.IdObra = ao.IdObra
 INNER JOIN TbAutor AS a
    ON a.IdAutor = ao.IdAutor
 WHERE e.NoEditora = 'Record'
 ORDER BY NoObra
