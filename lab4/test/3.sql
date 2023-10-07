.headers on

SELECT
    c_name as customer,
    sum(o_totalprice) as total_price
FROM
    customer,
    orders,
    nation
WHERE
    o_custkey = c_custkey
    AND
    c_nationkey = n_nationkey
    AND
    strftime('%Y', o_orderdate) = '1996'
    AND
    n_name = 'ARGENTINA'
GROUP BY
    c_name
    ;
