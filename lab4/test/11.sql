.headers on

SELECT 
    COUNT(DISTINCT o_orderkey) as order_cnt
FROM
    orders,
    customer,
    supplier,
    lineitem
WHERE
    c_custkey = o_custkey 
    AND
    l_orderkey = o_orderkey
    AND
    l_suppkey = s_suppkey
    AND
    c_acctbal < 0
    AND
    s_acctbal > 0;
