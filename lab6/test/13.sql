.headers on

SELECT 
    country
FROM
    (SELECT
        n_name AS country,
        COUNT(DISTINCT c_custkey) AS num_customers
    FROM
        nation,
        customer
    WHERE
        c_nationkey = n_nationkey
    GROUP BY
        n_name
    ORDER BY
        num_customers DESC)
WHERE
    num_customers = 
    (SELECT 
        MAX(num_customers) 
    FROM 
        (SELECT
            n_name AS country,
            COUNT(DISTINCT c_custkey) AS num_customers
        FROM
            nation,
            customer
        WHERE
            c_nationkey = n_nationkey
        GROUP BY
            n_name
        ORDER BY
            num_customers DESC))
GROUP BY
    country;
