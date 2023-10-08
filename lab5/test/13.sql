.headers on


SELECT
    DISTINCT
    supp_region.r_name as supp_region, 
    cust_region.r_name as cust_region,
    strftime('%Y', l_shipdate) AS year,
    SUM(l.l_extendedprice * (1 - l.l_discount)) as revenue
FROM
    region cust_region,
    region supp_region,
    nation supp_nation,
    nation cust_nation,
    lineitem l,
    orders o
JOIN
    supplier s ON s.s_nationkey = supp_nation.n_nationkey
JOIN
    customer c ON c.c_nationkey = cust_nation.n_nationkey
WHERE
    supp_nation.n_regionkey = supp_region.r_regionkey
    AND
    cust_nation.n_regionkey = cust_region.r_regionkey
    AND
    s.s_suppkey = l.l_suppkey
    AND
    o.o_orderkey = l.l_orderkey
    AND
    o.o_custkey = c.c_custkey
    AND
    l_shipdate >= '1994-01-01'
    AND 
    l_shipdate < '1996-01-01'
GROUP BY
    supp_region.r_name,
    cust_region.r_name,
    year;
