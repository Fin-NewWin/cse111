.headers on

SELECT
    c_name as cutomer,
    count(*) as cnt
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
