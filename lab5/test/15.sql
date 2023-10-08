.headers on

SELECT 
    l_discount AS max_small_disc
FROM
    lineitem,
    orders
WHERE
    strftime('%Y', o_orderdate) = '1994'
    AND
    l_orderkey = o_orderkey
    AND
    strftime('%m', o_orderdate) = '10'
    AND
    l_discount < (SELECT AVG(l_discount) FROM lineitem)
ORDER BY
    l_discount DESC
LIMIT 
    1;
