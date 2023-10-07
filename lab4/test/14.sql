.headers on

SELECT
    COUNT(*) AS items
FROM
    lineitem l
    JOIN orders o ON l.l_orderkey = o.o_orderkey
    JOIN customer c ON o.o_custkey = c.c_custkey
    JOIN nation cust_nation ON c.c_nationkey = cust_nation.n_nationkey
    JOIN supplier s ON l.l_suppkey = s.s_suppkey
    JOIN nation supp_nation ON s.s_nationkey = supp_nation.n_nationkey
WHERE
    cust_nation.n_name = 'KENYA'
    AND supp_nation.n_regionkey = (
        SELECT r_regionkey FROM region WHERE r_name = 'ASIA'
    );
