SELECT
U.nome AS 'usuario',
IF
(MAX(YEAR(H.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuario AS U
RIGHT JOIN SpotifyClone.historico AS H
ON H.usuario_id = U.usuario_id
GROUP BY U.nome
ORDER BY U.nome;
