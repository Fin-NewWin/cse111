.headers on

SELECT
    COUNT(DISTINCT c_name) AS customer_cnt
FROM
    (SELECT
        c_name,
        COUNT(DISTINCT o_orderkey) as order_count
    FROM
        customer,
        orders
    WHERE
        c_custkey = o_custkey
        AND
        strftime('%Y-%m', o_orderdate) = '1995-10'
    GROUP BY
        c_name)
WHERE
    order_count <= 3;
