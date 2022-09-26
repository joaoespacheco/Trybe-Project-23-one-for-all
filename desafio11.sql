SELECT
M.nome AS 'nome_musica',
CASE
	WHEN M.nome LIKE '%Bard%' THEN REPLACE(M.nome,'Bard','QA')
	WHEN M.nome LIKE '%Amar%' THEN REPLACE(M.nome,'Amar','Code Review')
	WHEN M.nome LIKE '%Pais%' THEN REPLACE(M.nome,'Pais','Pull Requests')
	WHEN M.nome LIKE '%SOUL%' THEN REPLACE(M.nome,'SOUL','CODE')
	WHEN M.nome LIKE '%SUPERSTAR%' THEN REPLACE(M.nome,'SUPERSTAR','SUPERDEV')
END AS 'novo_nome'
FROM SpotifyClone.musica AS M
HAVING novo_nome IS NOT NULL
ORDER BY M.nome DESC;
