.headers on

SELECT
    COUNT(DISTINCT c_custkey) AS customer_cnt
FROM
    customer,
    orders,
    nation,
    region,
    lineitem,
    supplier
WHERE
    c_custkey = o_custkey
    AND 
    l_orderkey = o_orderkey
    AND
    s_nationkey = n_nationkey
    AND
    n_regionkey = r_regionkey
    AND
    s_suppkey = l_suppkey
    AND 
    r_name = 'AFRICA';
    
