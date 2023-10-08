.headers on

SELECT
    p_name as part
FROM
    lineitem,
    part
WHERE
    l_shipdate > '1993-10-02'
    AND
    p_partkey = l_partkey
ORDER BY
    l_extendedprice * (1 - l_discount) DESC LIMIT 1;
