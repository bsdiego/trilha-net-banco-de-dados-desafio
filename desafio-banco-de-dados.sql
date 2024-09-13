--1
SELECT Nome, Ano FROM Filmes


--2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano


--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Filmes.Nome = 'De Volta para o Futuro'


--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Filmes.Ano = 1997


--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Filmes.Ano > 2000


--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Filmes.Duracao > 100 and Filmes.Duracao < 150
ORDER BY Duracao


--7
SELECT Ano, COUNT(*) Quantidade FROM Filmes
WHERE Filmes.Ano IS NOT NULL
GROUP BY Ano 
ORDER BY Quantidade DESC


--8
SELECT * FROM Atores
WHERE Atores.Genero = 'M'


--9
SELECT * FROM Atores
WHERE Atores.Genero = 'F'
ORDER BY PrimeiroNome


--10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


--11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'


--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor


