.headers on

SELECT
    country
FROM 
    (SELECT 
        country,
        MIN(total)
    FROM
        (SELECT
            n_name AS country,
            SUM(o_totalprice) AS total
        FROM
            nation,
            customer,
            orders
        WHERE
            n_nationkey = c_nationkey
            AND 
            c_custkey = o_custkey
        GROUP BY
            country));
