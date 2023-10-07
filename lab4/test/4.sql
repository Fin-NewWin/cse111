.headers on

SELECT 
    s_name as supplier,
    COUNT(*) as cnt
FROM
    supplier,
    nation,
    part,
    partsupp
WHERE
    s_nationkey = n_nationkey
    AND
    n_name = 'KENYA'
    AND
    s_suppkey = ps_suppkey
    AND
    ps_partkey = p_partkey
    AND
    p_container LIKE '%BOX'
GROUP BY
    s_name;
