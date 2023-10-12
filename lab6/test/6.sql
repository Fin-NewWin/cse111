.headers on

SELECT
    COUNT(DISTINCT s_name) AS suppliers_cnt
FROM 
    (SELECT
        s_name,
        COUNT(DISTINCT p_partkey) AS parts_cnt
    FROM
        supplier,
        part,
        partsupp,
        nation
    WHERE
        s_suppkey = ps_suppkey
        AND 
        ps_partkey = p_partkey
        AND
        s_nationkey = n_nationkey
        AND
        n_name = 'PERU'
    GROUP BY
        s_name
    HAVING
        parts_cnt > 40);

SELECT
        s_name,
        COUNT(DISTINCT p_partkey) AS parts_cnt
    FROM
        supplier,
        part,
        partsupp
    WHERE
        s_suppkey = ps_suppkey
        AND 
        ps_partkey = p_partkey
    GROUP BY
        s_name;
