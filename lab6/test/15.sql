.headers on

SELECT 
    name1 as country, 
    (sum1 - sum2) as "1997",
    (sum3 - sum4) as "1998"
FROM (SELECT n_name AS name1, SUM(l_extendedprice) AS sum1, l_shipdate as ship1
      FROM customer, orders, lineitem, supplier, nation
      WHERE c_custkey = o_custkey
            AND l_orderkey = o_orderkey
            AND l_suppkey = s_suppkey
            AND s_nationkey = n_nationkey
            AND c_nationkey != n_nationkey
            AND strftime('%Y' , l_shipdate) = '1997'
      GROUP BY n_name),
      (SELECT n_name AS name2, SUM(l_extendedprice) AS sum2, l_shipdate AS ship2
       FROM customer, orders, lineitem, supplier, nation
       WHERE c_custkey = o_custkey
             AND l_orderkey = o_orderkey
             AND l_suppkey = s_suppkey
             AND c_nationkey = n_nationkey
             AND s_nationkey != n_nationkey
            AND strftime('%Y' , l_shipdate) = '1997'
             GROUP BY n_name),
    (SELECT n_name AS name3, SUM(l_extendedprice) AS sum3, l_shipdate as ship3
      FROM customer, orders, lineitem, supplier, nation
      WHERE c_custkey = o_custkey
            AND l_orderkey = o_orderkey
            AND l_suppkey = s_suppkey
            AND s_nationkey = n_nationkey
            AND c_nationkey != n_nationkey
            AND strftime('%Y' , l_shipdate) = '1998'
      GROUP BY n_name),
      (SELECT n_name AS name4, SUM(l_extendedprice) AS sum4, l_shipdate AS ship4
       FROM customer, orders, lineitem, supplier, nation
       WHERE c_custkey = o_custkey
             AND l_orderkey = o_orderkey
             AND l_suppkey = s_suppkey
             AND c_nationkey = n_nationkey
             AND s_nationkey != n_nationkey
            AND strftime('%Y' , l_shipdate) = '1998'
             GROUP BY n_name)
WHERE name1 = name2 AND  name1 = name3 AND name1 = name4
GROUP BY name1;


-- SELECT n_name AS name2, SUM(l_extendedprice) AS sum2, strftime('%Y' , l_shipdate) AS ship2
-- FROM customer, orders, lineitem, supplier, nation
-- WHERE c_custkey = o_custkey
-- AND l_orderkey = o_orderkey
-- AND l_suppkey = s_suppkey
-- AND c_nationkey = n_nationkey
-- AND s_nationkey != n_nationkey
-- AND l_shipdate BETWEEN '1997-01-01' AND '1999-01-01'
-- GROUP BY n_name, strftime('%Y' , l_shipdate)
