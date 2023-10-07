.headers on

SELECT
    n_name as country,
    COUNT(o_orderkey) as cnt
FROM
    nation,
    region,
    supplier,
    customer,
    orders
WHERE
    n_regionkey = r_regionkey
    AND
    r_name = 'AFRICA'
    AND
    s_nationkey = n_nationkey
    AND
    o_custkey = c_custkey
    AND
    o_orderstatus = 'F'
    AND
    c_nationkey = n_nationkey
    AND
    strftime('%Y', o_orderdate) = '1993'
GROUP BY
    n_name
HAVING
    COUNT(o_orderkey) > 200;
