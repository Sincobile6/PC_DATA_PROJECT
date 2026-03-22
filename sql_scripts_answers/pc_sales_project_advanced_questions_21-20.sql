-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

SELECT SHOP_NAME SUM(Sale_Price-Cost_Price) AS Profit_per_shop
from pc_sales
group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price). PERCENTAGE

select sales_person_name 
sum((Sale_Price - Cost_Price) / Sale_Price) as profit_margin_per_sale
from pc_sales
group by sales_person_name

select sales_person_name 
sum((Sale_Price - Cost_Price) / Sale_Price) * 100.00 as profit_margin_per_sale
from pc_sales
group by sales_person_name

SELECT
    Pc_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM PC_SALES
GROUP BY Pc_Make
ORDER BY Revenue

-- 23. Determine which Continent has the highest total revenue.

select continent sum(sale_price) as total_revenue
from pc_sales
group by continent

SELECT DISTINCT TOP 1 CONTINENT, 
MAX(SALE_PRICE) AS TOTAL_REVENUE
FROM PC_SALES
GROUP BY CONTINENT

SELECT DISTINCT TOP 1 CONTINENT, 
SUM(CAST(SALE_PRICE AS BIGINT) AS TOTAL_REVENUE
FROM PC_SALES
GROUP BY CONTINENT

-- 24. Calculate average Sale Price per RAM size.

select Ram avg(sale_price) as average_sale_price
from pc_sales
group by Ram

-- 25. Find the PC Model with the highest Sale Price.

select top(10) pc_model, sale_price
from pc_sales
order by sale_price desc

select top(1) pc_model, 
MAX(sale_price) AS HIGHEST_SALE_PRICE
from pc_sales
GROUP BY PC_MODEL

SELECT TOP 1 


-- 26. Calculate the average number of days between Purchase Date and Ship Date.

SELECT AVG(DATEDIFF(day, Purchase_Date, Ship_Date)) AS AvgDaysBetween
FROM pc_sales

select avg(datediff(day,try_convert(date,purchase_date),
try_convert(date,ship_date))) as avgshipdays
from PC_SALES

SELECT AVG(DATEDIFF(day,
TRY_CAST (Purchase_Date as datetime),
TRY_CAST (Ship_Date as datetime))) as Avg_days
FROM PC_SALES

-- 27. Determine which Sales Person Department generates the highest revenue.

select sales_person_department sum(sale_price) as highest_revenue
from pc_sales
group by sales_person_department
ORDER BY TOTAL_REVENUE DESC

-- 28. Calculate total revenue per Storage Capacity.

select storage_capacity sum(sale_price)as total_revenue
from pc_sales
group by storage_capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT SALES_PERSON_NAME, Sale_Price, PC_Market_Price
FROM pc_sales
WHERE Sale_Price < PC_Market_Price

Select Sale_Price, PC_Market_Price, PC_Make,Sales_Person_Name,PC_Model
as sale_price_lower_than_pc_market_price
from PC_SALES
where Sale_Price < PC_Market_Price
order by Sale_Price

SELECT Sale_Price, PC_Market_Price
FROM PC_SALES
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
SELECT sales_person_name,
    SUM(total_sales_per_employee) AS total_sales,
    RANK() OVER (ORDER BY SUM(total_sales_per_employee) DESC) AS sales_rank
FROM pc_sales
GROUP BY sales_person_name
ORDER BY sales_rank

SELECT Sales_Person_Name,
       Total_Sales_per_Employee,
       RANK() OVER (ORDER BY Total_Sales_Per_Employee DESC) AS Sales_Rank
FROM PC_SALES;
