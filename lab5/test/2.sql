.headers on

SELECT
    o_orderpriority AS priority,
    COUNT(l_orderkey) AS item_cnt
FROM
    orders,
    lineitem
WHERE
    strftime('%Y', o_orderdate) = '1995'
    AND
    l_orderkey = o_orderkey
    AND 
    l_receiptdate < l_commitdate
GROUP BY
    o_orderpriority;
