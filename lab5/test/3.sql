.headers on

SELECT
    r_name,
    COUNT(DISTINCT c_custkey)
FROM
    customer,
    orders,
    nation,
    region,
    lineitem

WHERE
    n_regionkey = r_regionkey
    AND
    c_nationkey = n_nationkey
    AND
    c_custkey = o_custkey
    AND
    o_orderkey = l_orderkey
    AND
    l_quantity > 0
    AND
    c_acctbal > (SELECT
                    AVG(c_acctbal)
                    FROM customer)
GROUP BY
    r_name;
