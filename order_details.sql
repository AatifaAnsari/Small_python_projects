-- OBJECTIVE 2

-- 1.View the order_details table.
SELECT * from order_details;

-- 2.What is the date range of the table?
SELECT min(order_date) , max(order_date) from order_details;

-- 3.How many orders were made within this date range?
SELECT count(distinct order_id) from order_details;

-- 4.How many items were ordered within this date range?
SELECT count(*) from order_details;

-- 5.Which orders has the most number of items?
select order_id , count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- 6.How many orders has more than 12 items?
select count(*) from
(select order_id , count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders;