.headers on

SELECT 
    n_name,
    COUNT(*)
FROM
    supplier,
    nation
WHERE
    s_nationkey = n_nationkey
    AND
    n_name in ('ARGENTINA', 'BRAZIL')
GROUP BY
    n_name;

