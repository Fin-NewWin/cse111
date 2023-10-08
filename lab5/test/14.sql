.headers on

WITH total_rev AS (
    SELECT
        SUM(l_extendedprice * (1 - l_discount)) as total
    FROM
        region,
        nation,
        customer,
        lineitem,
        orders
    WHERE
        r_name = 'AMERICA'
        AND
        r_regionkey = n_regionkey
        AND
        n_nationkey = c_nationkey
        AND
        c_custkey = o_custkey
        AND
        o_orderkey = l_orderkey
)

SELECT
    SUM(l.l_extendedprice * (1 - l.l_discount)) / total as FRANCE_in_AMERICA_in_1994
FROM
    total_rev,
    region cust_region,
    nation supp_nation,
    nation cust_nation,
    lineitem l,
    orders o
JOIN
    supplier s ON s.s_nationkey = supp_nation.n_nationkey
JOIN
    customer c ON c.c_nationkey = cust_nation.n_nationkey
WHERE
    supp_nation.n_name = 'FRANCE'
    AND
    cust_nation.n_regionkey = cust_region.r_regionkey
    AND
    cust_region.r_name = 'AMERICA'
    AND
    l.l_suppkey = s.s_suppkey
    AND
    l.l_orderkey = o.o_orderkey
    AND
    o.o_custkey = c.c_custkey
    AND
    strftime('%Y', l.l_shipdate) = '1994';

