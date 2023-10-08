.headers on

SELECT
    r_name AS region,
    COUNT(DISTINCT s_name) as supp_cnt
FROM
    region,
    nation,
    supplier
WHERE
    n_regionkey = r_regionkey
    AND
    s_nationkey = n_nationkey
    AND
    s_acctbal > (SELECT avg(s_acctbal) FROM supplier)
GROUP BY
    r_name;
