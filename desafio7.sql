SELECT
ART.nome AS 'artista',
ALB.nome AS 'album',
COUNT(S.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AS ART
INNER JOIN SpotifyClone.album AS ALB
ON ALB.artista_id = ART.artista_id
INNER JOIN SpotifyClone.seguindo AS S
ON S.artista_id = ART.artista_id
GROUP BY ALB.album_id
ORDER BY seguidores DESC, artista, album;