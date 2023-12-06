-- 1
-- 2
CREATE INDEX customer_idx_83a22bf1 ON customer(c_mktsegment);
-- 3
CREATE INDEX customer_idx_00641243 ON customer(c_name);
-- 4
CREATE INDEX supplier_idx_459d2434 ON supplier(s_acctbal);
-- 5
CREATE INDEX lineitem_idx_d3eefa16 ON lineitem(l_receiptdate, l_returnflag);
-- 6
CREATE INDEX supplier_idx_2802d374 ON supplier(s_nationkey);
CREATE INDEX nation_idx_006dfb86 ON nation(n_name);
-- 7
CREATE INDEX orders_idx_df288002 ON orders(o_custkey, o_orderdate);
CREATE INDEX customer_idx_63d516d2 ON customer(c_nationkey, c_custkey);
CREATE INDEX nation_idx_70de5dc5 ON nation(n_regionkey, n_nationkey);
CREATE INDEX region_idx_0071962a ON region(r_name);
-- 8
CREATE INDEX nation_idx_b5b1ecd1 ON nation(n_nationkey, n_name);
CREATE INDEX customer_idx_1cb1bd02 ON customer(c_custkey);
CREATE INDEX orders_idx_ef96c378 ON orders(o_orderdate);
-- 9
CREATE INDEX lineitem_idx_d55847c0 ON lineitem(l_orderkey);
CREATE INDEX orders_idx_a7048255 ON orders(o_custkey, o_orderkey);
CREATE INDEX customer_idx_63eb5399 ON customer(c_name, c_custkey);
-- 10
CREATE INDEX supplier_idx_aeb31094 ON supplier(s_nationkey, s_acctbal);
CREATE INDEX region_idx_19efe394 ON region(r_name, r_regionkey);
-- 11
CREATE INDEX orders_idx_fd622bf8 ON orders(o_orderpriority, o_orderdate);
-- 12
CREATE INDEX supplier_idx_464097db ON supplier(s_suppkey);
CREATE INDEX lineitem_idx_2dd29ce0 ON lineitem(l_orderkey, l_suppkey);
CREATE INDEX orders_idx_aa60401b ON orders(o_orderpriority, o_orderkey);
-- 13
CREATE INDEX supplier_idx_4520af5a ON supplier(s_suppkey, s_name);
CREATE INDEX lineitem_idx_d1f9c9a4 ON lineitem(l_discount);
-- 14
CREATE INDEX region_idx_0b7b0a24 ON region(r_regionkey, r_name);
CREATE INDEX orders_idx_cec31706 ON orders(o_orderstatus);
-- 15
