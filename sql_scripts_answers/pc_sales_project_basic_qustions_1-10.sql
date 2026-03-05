
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.

select count(*) AS Total_Number_of_sales
from pc_sales

-- 2. Count the number of sales per Continent.

select count(*) as number_of_sales, continent 
from pc_sales 
group by continent

-- 3. Count the number of sales per Country or State.

select count(*) as Number_of_sales, country_or_state 
from pc_sales 
group by country_or_state

-- 4. List all distinct Shop Name values.

select distinct Shop_name
from pc_sales

-- 5. Find the average Sale Price.

select avg(sale_price) as average_price
from pc_sales

-- 6. Find the highest and lowest Sale Price.

select top(1) sale_price as lowest_sale_price 
from pc_sales
order by sale_price asc

select min (sale_price) as lowestPrice
from pc_sales

select top(1) sale_price as highest_sale_price
from pc_sales
order by sale_price desc

select max (sale_price) as highestPrice from pc_sales

-- 7. Count the number of sales by Payment Method.

select count (*) as NumberOfSales, [Payment_method]
 from pc_sales
group by [payment_method]

-- 8. Count the number of sales by Channel (Online vs Offline).

select count (*) as NumberOfSales,[channel] 
 from pc_sales
group by [channel]

-- 9. Count the number of sales by Priority level.

select count (*) as NumberOfSales,[priority] 
 from pc_sales
group by [priority]

-- 10. Count the number of distinct PC Make values.
select count (distinct [pc_make]) as distinct_pc_make_value
from pc_sales



