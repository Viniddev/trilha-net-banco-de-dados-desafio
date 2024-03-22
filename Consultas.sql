--use Filmes

-- 1)
select Nome, Ano from Filmes.dbo.filmes 

--2)
select Nome, Ano, Duracao from Filmes.dbo.Filmes order by ano asc

--3)
select Nome, Ano, Duracao from Filmes.dbo.Filmes where Nome like('%futuro%')

--4)
select Nome, Ano, Duracao from Filmes.dbo.Filmes where ano = 1997

--5)
select Nome, Ano, Duracao from Filmes.dbo.Filmes where ano > 2000

--6)
select Nome, Ano, Duracao from Filmes.dbo.Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc

--7)
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
order by quantidade_filmes desc

--8)
select PrimeiroNome, UltimoNome, Genero from Filmes.dbo.Atores where Genero = 'M'

--9)
select PrimeiroNome, UltimoNome, Genero from Filmes.dbo.Atores where Genero = 'F' order by PrimeiroNome

--10)
select f.Nome ,g.genero from Filmes.dbo.FilmesGenero as fg
left join Filmes.dbo.Generos as g on fg.IdGenero = g.id
left join Filmes.dbo.Filmes as f on f.id = fg.IdFilme

--11)
select f.Nome ,g.genero from Filmes.dbo.FilmesGenero as fg
left join Filmes.dbo.Generos as g on fg.IdGenero = g.id 
left join Filmes.dbo.Filmes as f on f.id = fg.IdFilme 
where g.Genero like('Mistério')

--12)
select F.Nome , A.PrimeiroNome, A.UltimoNome, E.Papel from Filmes.dbo.ElencoFilme as E
left join Filmes.dbo.Atores as A on E.IdAtor = A.id
left join Filmes.dbo.Filmes as F on F.Id = E.IdFilme