-- 1.  Buscar Nome e ano dos filmes 

SELECT Nome, Ano FROM Filmes 

--2. Buscar Nome, Ano dos filmes ordenado pelo ano

SELECT Nome, Ano FROM Filmes 
				 ORDER BY Ano

--3.  Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e dura��o

SELECT Nome, Ano, Duracao FROM Filmes 
					      WHERE Nome = 'De volta para o Futuro'

--4.  Buscar Filmes lan�ados em 1997 OBS: Nome, ano, dura��o

SELECT Nome, Ano, Duracao FROM Filmes 
						  WHERE Ano = '1997'

--5. Buscar Filmes lan�ados ap�s 2005 OBS: Nome, Ano, Dura��o

SELECT Nome, Ano, Duracao FROM Filmes 
						  WHERE Ano > 2005

--6.  Buscar os filmes com dura��o maior que 100 e menor que 150 ordenado pela dura��o em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes 
						  WHERE Duracao > 100 
						  AND Duracao < 150 
						  ORDER BY Duracao

--7.  Buscar a Quantidade de filmes lan�adas no ano, agrupando por ano ordenado pela dura��o em ordem Decrescente

SELECT Ano, COUNT(1) Quantidade FROM Filmes 
								GROUP BY Ano 
								ORDER BY Quantidade DESC

--8.  Buscar os atores do genero masculino, retornanod o PrimeiroNome e UltimoNome OBS: ID tamb�m

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores 
										WHERE Genero = 'M'

--9. Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores 
										WHERE Genero = 'F' 
										ORDER BY PrimeiroNome

--10. Buscar o nome do filme e o g�nero

 SELECT f.Nome, g.Genero FROM Filmes f
						 INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
						 INNER JOIN Generos g ON fg.IdGenero = g.Id

--11. Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT f.Nome, g.Genero FROM Filmes f 
						INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
						INNER JOIN Generos g ON fg.IdGenero = g.Id 
						WHERE g.Genero = 'Mist�rio'

--12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes f 
													INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
													INNER JOIN Atores a ON e.IdAtor = a.Id