.headers on

SELECT
    DISTINCT s_name AS supplier,
    p_size AS part_size,
    MAX(ps_supplycost) AS max_cost
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
