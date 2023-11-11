.headers on

SELECT
    DISTINCT s_name as supplier,
    p_size AS part_size,
    MAX(ps_supplycost)
FROM
    part,
    partsupp,
    supplier,
    nation,
    region
WHERE
    p_type LIKE '%STEEL%'
    AND
    p_partkey = ps_partkey
    AND
    s_suppkey = ps_suppkey
    AND
    s_nationkey = n_nationkey
    AND
    r_regionkey = n_regionkey
    AND
    r_name = 'AMERICA'
GROUP BY
    s_name;
