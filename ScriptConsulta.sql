-- 1 Buscar o nome e ano dos filmes
SELECT NOME, ANO
FROM FILMES

-- 2 Buscar o nome e ano dos filmes,
-- ordenados por ordem crescente pelo ano
SELECT *
FROM FILMES
ORDER BY ANO ASC

-- 3 Buscar pelo filme de volta para o futuro,

SELECT * 
FROM FILMES
WHERE FILMES.Nome = 'De Volta para o Futuro'

-- 4 Buscar os filmes lan�ados em 1997
SELECT *
FROM FILMES
WHERE FILMES.Ano = 1997

SELECT *
FROM FILMES
WHERE ANO > 2000

-- 6 Buscar os filmes com a duracao maior que 100
-- e menor que 150, ordenando pela duracao em ordem crescente
SELECT * 
FROM FILMES 
WHERE FILMES.Duracao > 100
AND FILMES.Duracao  < 150
ORDER BY FILMES.Duracao ASC

-- 7 Buscar a quantidade de filmes lan�adas no ano, agrupando 
-- por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*)
FROM FILMES
GROUP BY ANO 
ORDER BY COUNT(*) DESC

-- 8 Buscar os Atores do g�nero masculino, 
-- retornando o PrimeiroNome, UltimoNome
SELECT * 
FROM ATORES
WHERE ATORES.Genero = 'M'

-- 9 Buscar os Atores do genero feminino, retornando o PrimeiroNome,
-- UltimoNome, e ordenando pelo PrimeiroNome
SELECT * 
FROM ATORES
WHERE ATORES.Genero = 'F'
ORDER BY ATORES.PrimeiroNome

-- 10 Buscar o nome do filme e o genero
SELECT FILMES.Nome, GENEROS.Genero
FROM FILMES INNER JOIN FILMESGENERO ON (FILMES.Id = FILMESGENERO.IdFilme)
INNER JOIN GENEROS ON (FILMESGENERO.IdGenero = GENEROS.Id)

-- 11 Buscar o nome do filme e o genero do tipo "Mist�rio"
SELECT FILMES.Nome, GENEROS.Genero
FROM FILMES INNER JOIN FILMESGENERO ON (FILMES.Id = FILMESGENERO.IdFilme)
INNER JOIN GENEROS ON (FILMESGENERO.IdGenero = GENEROS.Id)
WHERE GENEROS.Genero = 'Misterio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome,
-- UltimoNome e seu Papel
SELECT FILMES.Nome, ATORES.PrimeiroNome, ATORES.UltimoNome, ELENCOFILME.Papel
FROM FILMES INNER JOIN ELENCOFILME ON (FILMES.Id = ELENCOFILME.IdFilme) 
INNER JOIN ATORES ON (ELENCOFILME.IdAtor = ATORES.Id)
