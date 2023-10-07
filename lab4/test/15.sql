.headers on

SELECT
    r_name as region,
    s_name as supplier,
    MAX(s_acctbal) as acct_bal
FROM
    region,
    nation,
    supplier
WHERE
    r_regionkey = n_regionkey
    AND 
    n_nationkey = s_nationkey
GROUP BY
    r_name;

