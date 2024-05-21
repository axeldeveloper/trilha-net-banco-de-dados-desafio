--1 - Buscar o nome e ano dos filmes

SELECT  nome, ano from Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT  nome, ano from Filmes order by ano ASC  ;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT  nome, ano, duracao  from Filmes where nome = 'De Volta para o Futuro'  ;
SELECT  nome, ano, duracao  from Filmes where id = 28  ;

--4 - Buscar os filmes lançados em 1997
SELECT  nome, ano, duracao  from Filmes where ano = 1997  ;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT  nome, ano, duracao  from Filmes where ano > 2000  ;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT  nome, ano, duracao  from Filmes WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select a.PrimeiroNome , a.UltimoNome, a  from Atores a where Genero  = 'M'


-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM atores WHERE genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero baseado na tabela Filmes  FilmesGenero  Generos
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;