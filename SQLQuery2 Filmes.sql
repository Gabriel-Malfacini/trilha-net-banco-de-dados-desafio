--1
select nome,ano from Filmes; 

--2
select * from Filmes Nome order by Ano

--3
select * from filmes where Nome = 'De Volta para o futuro'

--4
select * from filmes where ano=1997

--5
select * from filmes where Ano > 2000

--6 
select * from filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7
SELECT Ano,COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8 
select * from Atores where Genero = 'm'

--9
select * from Atores where Genero = 'f' order by PrimeiroNome

--10
SELECT Filmes.Nome,Generos.Genero FROM Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT 
    Filmes.Nome, 
    Generos.Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE 
    Generos.Genero = 'Mistério';

 --12
 SELECT 
    Filmes.Nome, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;