.headers on

SELECT
    supp_region.r_name as supp_region,
    cust_region.r_name as cust_region,
    MIN(o.o_totalprice) AS min_price
FROM
    orders o
    JOIN customer c ON o.o_custkey = c.c_custkey
    JOIN nation cust_nation ON c.c_nationkey = cust_nation.n_nationkey
    JOIN region cust_region ON cust_nation.n_regionkey = cust_region.r_regionkey
    JOIN supplier s ON o.o_custkey = s.s_suppkey
    JOIN nation supp_nation ON s.s_nationkey = supp_nation.n_nationkey
    JOIN region supp_region ON supp_nation.n_regionkey = supp_region.r_regionkey
WHERE
    cust_nation.n_regionkey != supp_nation.n_regionkey
GROUP BY
    s_nationkey,
    c_nationkey;
