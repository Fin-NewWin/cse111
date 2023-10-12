SELECT 
    DISTINCT p_name as part
FROM 
    nation,
    region,
    customer,
    part,
    partsupp,
    lineitem,
    orders
WHERE
    n_nationkey = c_nationkey
    AND 
    n_regionkey = r_regionkey
    AND 
    r_name = 'ASIA'
    AND 
    p_partkey = ps_partkey
    AND 
    c_custkey = o_custkey
    AND 
    o_orderkey = l_orderkey
    AND 
    l_partkey = ps_partkey
    AND
    ps_partkey IN (SELECT 
        p_partkey AS partKey
    FROM 
        part, 
        partsupp, 
        supplier, 
        nation, 
        region
    WHERE 
        p_partkey = ps_partkey 
        AND 
        s_suppkey = ps_suppkey 
        AND 
        s_nationkey = n_nationkey
        AND 
        n_regionkey = r_regionkey
        AND 
        r_name = 'AFRICA'
    GROUP BY 
        ps_partkey
    HAVING 
        COUNT(s_suppkey) = 3);
