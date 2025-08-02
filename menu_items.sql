-- OBJECTIVE 1

-- 1.View the manu items table
SELECT * FROM menu_items;

-- 2.Find the no. of items in the menu?
SELECT count(*) from menu_items;

-- 3.what are the least and most expensive items on the menu?

SELECT * from menu_items 
order by price;

SELECT * from menu_items 
order by price DESC;

-- 4.How many italian dishes are on the menu?

SELECT count(*) from menu_items 
where category = 'Italian';

-- 5.What are the least and most expensive italian dishes on the menu?

SELECT * from menu_items 
where category = 'Italian'
Order by price;

SELECT * from menu_items 
where category = 'Italian'
Order by price DESC;

-- 6.How many dishes are in each category?

SELECT category, count(menu_item_id) as num_dishes
from menu_items 
group by category;


-- 7.What is the avg dish price within each category?
SELECT category , avg(price) as avg_price
from menu_items
group by category;
