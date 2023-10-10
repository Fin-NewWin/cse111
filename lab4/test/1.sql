.headers on

SELECT 
    n_name AS country,
    COUNT(*) AS cnt
FROM 
    customer, 
    orders, 
    nation, 
    region
WHERE 
    c_custkey = o_custkey 
    AND 
    c_nationkey = n_nationkey
    AND 
    n_regionkey = r_regionkey
    AND 
    r_name = 'EUROPE'
GROUP BY n_name
