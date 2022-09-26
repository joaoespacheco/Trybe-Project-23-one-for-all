SELECT
COUNT(H.musica_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.historico AS H
ON H.usuario_id = U.usuario_id
WHERE U.nome = 'Barbara Liskov';
