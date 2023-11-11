.headers on

SELECT
    SUM(p_size) AS part_cnt
FROM
    supplier,
    part,
    partsupp,
    nation
WHERE
    s_suppkey = ps_suppkey
    AND 
    ps_partkey = p_partkey
    AND 
    s_nationkey = n_nationkey
    AND 
    n_name = 'UNITED STATES';
