SELECT
MIN(P.valor) AS 'faturamento_minimo',
MAX(P.valor) AS 'faturamento_maximo',
ROUND(AVG(P.valor), 2) AS 'faturamento_medio',
SUM(P.valor) AS 'faturamento_total'
FROM SpotifyClone.plano AS P
INNER JOIN SpotifyClone.usuario AS U
ON U.plano_id = P.plano_id;