.headers on

SELECT
    c_name AS customer,
    COUNT(DISTINCT o_orderkey) As cnt
FROM
    customer,
    orders,
    nation
WHERE
    o_custkey = c_custkey
    AND
    c_nationkey = n_nationkey
    AND
    strftime('%Y', o_orderdate) = '1992'
    AND
    n_name = 'EGYPT'
GROUP BY
    c_name;
