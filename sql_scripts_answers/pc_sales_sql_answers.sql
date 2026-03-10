
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

select shop_name sum(sale_price) as total_revenue
from pc_sales
group by shop_name

-- 18. Calculate total revenue per Sales Person Name.

select sales_person_name sum(sale_price) as total_revenue
from pc_sales
group by sales_person_name

-- 19. Find average Credit Score per Payment Method.

select Payment_Method avg(Credit_Score) as average_Credit_Score
from pc_sales
group by Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.

select sales_person_department SUM(COST_OF_REPAIRS) as Total_Cost_of_repairs
from pc_sales
group by sales_person_department 

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
SELECT SHOP_NAME SUM(Sale_Price-Cost_Price) AS Profit_per_shop
from pc_sales
group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

select sales_person_name 
sum((Sale_Price - Cost_Price) / Sale_Price) as profit_margin_per_sale
from pc_sales
group by sales_person_name

-- 23. Determine which Continent has the highest total revenue.

select continent sum(sale_price) as total_revenue
from pc_sales
group by continent

-- 24. Calculate average Sale Price per RAM size.

select Ram avg(Sale_Price) as average_sale_price
from pc_sales
group by Ram

-- 25. Find the PC Model with the highest Sale Price.

select top(10) pc_model, sale_price
from pc_sales
order by sale_price desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

SELECT AVG(DATEDIFF(day, Purchase_Date, Ship_Date)) AS AvgDaysBetween
FROM pc_sales

-- 27. Determine which Sales Person Department generates the highest revenue.

select sales_person_department sum(sale_price) as highest_revenue
from pc_sales
group by sales_person_department

-- 28. Calculate total revenue per Storage Capacity.

select storage_capacity sum(sale_price)as total_revenue
from pc_sales
group by storage_capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT SALES_PERSON_NAME, Sale_Price, PC_Market_Price
FROM pc_sales
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
SELECT sales_person_name,
    SUM(total_sales_per_employee) AS total_sales,
    RANK() OVER (ORDER BY SUM(total_sales_per_employee) DESC) AS sales_rank
FROM pc_sales
GROUP BY sales_person_name
ORDER BY sales_rank

