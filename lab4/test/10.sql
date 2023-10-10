.headers on

SELECT
    DISTINCT
    p_type as part_type,
    MIN(l_discount) as min_disc,
    MAX(l_discount) as max_disc
FROM 
    part,
    lineitem
WHERE
    p_type LIKE '%COPPER%'
    OR
    p_type LIKE '%ECONOMY%'
    AND
    p_partkey = l_partkey
GROUP BY
    p_type;
