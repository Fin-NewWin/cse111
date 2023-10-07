.headers on

SELECT 
    COUNT(DISTINCT o_clerk)
FROM
    orders,
    customer,
    supplier, 
    nation
WHERE
    n_name = 'PERU'
    AND
    n_nationkey = s_nationkey
    AND
    o_custkey = c_custkey
    AND
    c_nationkey = s_nationkey;

