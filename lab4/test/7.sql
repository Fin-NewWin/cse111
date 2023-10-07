.headers on

SELECT
    n_name as country,
    o_orderstatus as status,
    COUNT(o_orderkey) as orders
FROM
    nation,
    region,
    orders,
    customer
WHERE
    n_regionkey = r_regionkey
    AND
    r_name = 'AFRICA'
    AND
    o_custkey = c_custkey
    AND
    c_nationkey = n_nationkey
GROUP BY
    n_name,
    o_orderstatus
ORDER BY
    n_name,
    o_orderstatus;
