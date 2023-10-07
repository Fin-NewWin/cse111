.headers on

SELECT 
    n_name AS country,
    COUNT(DISTINCT c_name) AS cust_cnt,
    COUNT(DISTINCT s_name) As supp_cnt

FROM
    nation,
    region,
    customer,
    supplier
WHERE
    n_regionkey = r_regionkey
    AND
    r_name = 'AMERICA'
    AND 
    c_nationkey = n_nationkey
    AND
    s_nationkey = n_nationkey
GROUP BY
    n_name;
