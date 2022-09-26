SELECT
ART.nome AS 'artista',
ALB.nome AS 'album'
FROM SpotifyClone.artista AS ART
INNER JOIN SpotifyClone.album AS ALB
ON ALB.artista_id = ART.artista_id
INNER JOIN SpotifyClone.seguindo AS S
ON S.artista_id = ART.artista_id
WHERE ART.nome = 'Elis Regina'
GROUP BY ALB.album_id
ORDER BY ALB.nome;
