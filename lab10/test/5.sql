CREATE TRIGGER t5 AFTER DELETE ON part
FOR EACH ROW
BEGIN
	DELETE FROM partsupp WHERE ps_partkey = old.p_partkey;
	DELETE FROM lineitem WHERE l_partkey = old.p_partkey;
END;

DELETE FROM part
WHERE p_partkey IN (SELECT p_partkey
        FROM part,partsupp,nation,supplier
        WHERE s_nationkey = n_nationkey
        AND ps_suppkey = s_suppkey
        AND p_partkey = ps_partkey
        AND n_name IN ('KENYA', 'MOROCCO'));

SELECT
        n_name AS country,
        COUNT(ps_partkey) as parts_cnt
FROM part,nation,region,supplier, partsupp
WHERE s_suppkey = ps_suppkey
AND ps_partkey = p_partkey
AND s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'AFRICA'
GROUP BY n_name
ORDER BY n_name
ASC;
