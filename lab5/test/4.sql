.headers on


SELECT
    COUNT(DISTINCT s_suppkey) AS supp_cnt
FROM
    supplier,
    partsupp,
    part
WHERE
    s_suppkey = ps_suppkey
    AND
    ps_partkey = p_partkey
    AND
    p_type LIKE '%POLISHED%'
    AND
    p_size in (10, 20, 30, 40);
