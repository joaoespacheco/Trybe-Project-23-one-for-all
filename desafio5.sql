SELECT
M.nome AS 'cancao',
COUNT(H.musica_id) AS 'reproducoes'
FROM SpotifyClone.musica AS M
INNER JOIN SpotifyClone.historico AS H
ON H.musica_id = M.musica_id
GROUP BY M.nome
ORDER BY reproducoes DESC, M.nome
LIMIT 2;