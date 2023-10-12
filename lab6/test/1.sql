.headers on

SELECT
    DISTINCT
    s_name AS supplier,
    c_name AS customer,
    o_totalprice AS price
FROM
    supplier,
    customer,
    orders,
    lineitem
WHERE
    s_suppkey = l_suppkey
    AND 
    o_orderkey = l_orderkey
    AND
    c_custkey = o_custkey
    AND
    o_orderstatus = 'F'
    AND
    o_totalprice = (SELECT MAX(o_totalprice) FROM orders WHERE o_orderstatus = 'F')
ORDER BY
    s_name;

