.headers on

SELECT
    p_mfgr as manufacturer
FROM
    supplier,
    part,
    partsupp
WHERE
    s_name = 'Supplier#000000040'
    AND
    p_partkey = ps_partkey
    AND
    ps_suppkey = s_suppkey
ORDER BY
    ps_availqty ASC
LIMIT
    1;
