-- OBJECTIVE 3

-- 1. Combine the menu_items and order_details tables into a single table.
select * 
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id;

-- 2. What were the least and most ordered items? What cateogries were they in?
select item_name , count(order_details_id) as num_purchases , category
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id
group by item_name , category 
order by num_purchases;

select item_name , count(order_details_id) as num_purchases , category
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases desc;

-- 3. What were the top 5 orders that spent the most money?
select order_id , sum(price) as total_spend
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id
group by order_id
order by  total_spend desc
limit 5;

-- 4. View the details of the highest spend order. What insights can you gather from the
select category , count(item_id) as num_items
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

-- 5. View the details of the top 5 highest spend order. What insights can you gather from the

select order_id  ,category , count(item_id) as num_items
from order_details od 
left join menu_items mi 
on od.item_id = mi.menu_item_id
where order_id IN (440, 2075 , 1957 , 330 , 2675)
group by order_id ,category;

-- INSIGHT : We should keep those expensive italian dishes as it is tend to be orderd more especially by highest spending customers.