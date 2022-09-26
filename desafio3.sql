SELECT
U.nome AS 'usuario',
COUNT(H.musica_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(M.duracao) / 60,2) AS 'total_minutos'
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.historico AS H
ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.musica AS M
ON M.musica_id = H.musica_id
GROUP BY U.nome
ORDER BY U.nome;
