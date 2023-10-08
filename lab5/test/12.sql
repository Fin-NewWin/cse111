.headers on

SELECT
    o_orderpriority,
    COUNT(DISTINCT o_orderkey)
FROM
    orders,
    lineitem
WHERE
    o_orderkey = l_orderkey
    AND
    l_receiptdate > l_commitdate
    AND
    strftime('%Y', o_orderdate) = '1995'
GROUP BY
    o_orderpriority;
