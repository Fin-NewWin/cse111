.headers on

SELECT 
    n_name AS country,
    COUNT(DISTINCT s_suppkey) AS cnt
FROM
    supplier,
    nation
WHERE
    s_nationkey = n_nationkey
    AND
    n_name in ('ARGENTINA', 'BRAZIL')
GROUP BY
    n_name;

