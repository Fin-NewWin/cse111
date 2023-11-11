.headers on

SELECT
    COUNT(DISTINCT s_name) AS supplier_cnt
FROM
    supplier,
    part,
    partsupp
WHERE
    s_suppkey = ps_suppkey
    AND 
    ps_partkey = p_partkey
    AND
    p_retailprice = (SELECT MIN(p_retailprice) FROM part);
