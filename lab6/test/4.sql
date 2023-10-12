.headers on

SELECT 
    n_name as country
FROM 
        (SELECT 
            n_name, 
            SUM(l_extendedprice) AS sum
        FROM 
            nation, 
            supplier, 
            lineitem
        WHERE 
            s_nationkey = n_nationkey
            AND 
            l_suppkey = s_suppkey
            AND 
            strftime('%Y', l_shipdate) = '1994'
        GROUP BY 
            n_name
        ORDER BY
            sum ASC)
LIMIT
    1;
