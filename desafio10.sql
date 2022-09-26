SELECT
M.nome AS 'nome',
COUNT(H.usuario_id) AS 'reproducoes'
FROM SpotifyClone.musica AS M
INNER JOIN SpotifyClone.historico AS H
ON H.musica_id = M.musica_id
INNER JOIN SpotifyClone.usuario AS U
ON U.usuario_id = H.usuario_id
WHERE U.plano_id = 1 OR U.plano_id = 4
GROUP BY M.nome
ORDER BY M.nome;
