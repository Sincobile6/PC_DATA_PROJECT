
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


-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

select sum(Sale_price) as total_revenue
from pc_sales

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

select sum(Sale_Price - Cost_Price) as Total_Profit
from pc_sales

-- 13. Find the average Discount Amount.

select AVG(discount_amount) as averageDiscount
from pc_sales

-- 14. Calculate total Finance Amount issued.

select sum(convert, int(finance_amount)) as Total_Finance_Amount
from pc_sales

-- 15. Find total revenue per PC Make.

select pc_make sum(sale_price) as total_revenue
from pc_sales
group by pc_make

-- 16. Find average Sale Price per Storage Type.

select storage_type avg(sale_price) as Average_Sale_Price
from pc_sales
group by storage_type

-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

