.headers on

SELECT
    r_name,
    MAX(s_acctbal)
FROM
    region,
    nation,
    supplier
WHERE
    r_regionkey = n_regionkey
    AND
    n_nationkey = s_nationkey
GROUP BY
    r_name
HAVING
    MAX(s_acctbal) > 9000;

