SELECT COUNT(MUS.musica_id) AS 'cancoes',
(SELECT COUNT(ART.artista_id) FROM SpotifyClone.artista AS ART) AS 'artistas',
(SELECT COUNT(ALB.artista_id) FROM SpotifyClone.album AS ALB) AS 'albuns'
FROM SpotifyClone.musica AS MUS;