.headers on

SELECT
    s_name AS supplier_name,
    o_orderpriority AS priority,
    COUNT(l_partkey) AS number_of_parts
FROM
    nation,
    supplier,
    orders,
    lineitem
WHERE
    s_nationkey = n_nationkey
    AND
    n_name = 'INDONESIA'
    AND
    s_suppkey = o_custkey
    AND
    o_orderkey = l_orderkey
GROUP BY
    s_name,
    o_orderpriority
ORDER BY
    s_name,
    o_orderpriority;
