.headers on

SELECT
    COUNT(DISTINCT c_name) AS cust_cnt
FROM
    customer,
    nation,
    region
WHERE
    c_nationkey = n_nationkey
    AND 
    n_regionkey = r_regionkey
    AND 
    r_name NOT IN ('EUROPE', 'ASIA');
    
